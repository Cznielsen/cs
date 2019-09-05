import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.Namespace;
import org.jdom2.input.SAXBuilder;
import org.jdom2.output.XMLOutputter;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * This program will take a XML file as input, and add the item the cloud, and thereafter modify the item on the cloud to match the supplied item.
 */

public class UploadXML {
    public static void main(String[] args)
    {
        try
        {
            //Load the file
            SAXBuilder builder = new SAXBuilder();
            Document itemDoc = builder.build(args[0]);
            Element root = itemDoc.getRootElement();

            //Create cloud urls
            URL createItemURL = new URL("http://webtek.cs.au.dk/cloud/createItem");
            URL modifyItemURL = new URL("http://webtek.cs.au.dk/cloud/modifyItem");

            Namespace w = Namespace.getNamespace("http://www.cs.au.dk/dWebTek/2014");
            // creating elements
            Element createItemElement = new Element("createItem", w);
            Element modifyItemElement = new Element("modifyItem", w);

            Element itemNameElement = new Element("itemName", w);
            Element shopKeyElement = new Element("shopKey",w).setText("6E9BFE220AC27CA9773C4312");
            Element itemURLElement = new Element("itemURL", w).setText(root.getContent(5).getValue());
            Element itemPriceElement = new Element("itemPrice", w).setText(root.getContent(7).getValue());
            Element itemDescriptionElement = new Element("itemDescription", w);
            Element itemDescriptionDocumentElement = new Element("document", w).setText(root.getContent(11).getValue());

            itemDescriptionElement.addContent(itemDescriptionDocumentElement);

            String itemName = itemDoc.getRootElement().getChild("itemName", w).getText();
            itemNameElement.setText(itemName);
            System.out.println("Item name: " + itemName);

            //Setup the createItem XML
            createItemElement.addContent(shopKeyElement);
            createItemElement.addContent(itemNameElement);

            //Setup the modifyItem XML
            modifyItemElement.addContent(shopKeyElement.clone());
            modifyItemElement.addContent(itemNameElement.clone());
            modifyItemElement.addContent(itemURLElement);
            modifyItemElement.addContent(itemPriceElement);
            modifyItemElement.addContent(itemDescriptionElement);

            //Create the item on the cloud
            Document createItemDoc = new Document(createItemElement);
            Document response = sendRequestWithResponse(createItemDoc, createItemURL);

            //Extract the new item ID
            String id = response.getRootElement().getText();
            System.out.println("Item ID: " + id);

            modifyItemElement.addContent(new Element("itemID", w).setText(id));

            //Modify item on the cloud
            Document modifyItemDoc = new Document(modifyItemElement);
            sendRequest(modifyItemDoc, modifyItemURL);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    private static Document sendRequestWithResponse(Document doc, URL url) throws IOException, JDOMException
    {
        HttpURLConnection con = sendRequest(doc, url);

        //Read from cloud
        System.out.println("Response:");
        XMLOutputter outputter = new XMLOutputter();
        SAXBuilder builder = new SAXBuilder();
        Document response = builder.build(con.getInputStream());
        outputter.output(response, System.out);

        System.out.println("Response status: " + con.getResponseCode());
        return response;
    }

    private static HttpURLConnection sendRequest(Document doc, URL url) throws IOException
    {
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("POST");

        con.setDoOutput(true);
        con.setDoInput(true);

        con.connect();

        //Write to cloud
        XMLOutputter outputter = new XMLOutputter();
        outputter.output(doc, con.getOutputStream());
        System.out.println("Sending to cloud:");
        outputter.output(doc, System.out);

        System.out.println("Response status: " + con.getResponseCode());

        return con;
    }
}
