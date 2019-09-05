import java.awt.*;
import java.awt.event.*;
import java.io.*;
import javax.swing.*;
import javax.swing.text.*;
import java.net.ServerSocket;
import java.net.Socket;

public class DistributedTextEditor extends JFrame {

	protected ServerSocket serverSocket;
	protected Socket clientSocket;
	private Thread listenerThread;
	private int[] vc;

    private int defaultPortNumber = 40499;

    private JTextArea area1 = new JTextArea(20,120);
    private JTextField ipaddress = new JTextField("IP address here");
    private JTextField portNumber = new JTextField("Port number here");

    private EventReplayer er;
    private Thread ert;

    private JFileChooser dialog =
    		new JFileChooser(System.getProperty("user.dir"));

    private String currentFile = "Untitled";
    private boolean changed = false;
    private boolean connected = false;
    private DocumentEventCapturer dec = new DocumentEventCapturer();

    public DistributedTextEditor() {
    	area1.setFont(new Font("Monospaced",Font.PLAIN,12));
    	area1.setLineWrap(true);


    	((AbstractDocument)area1.getDocument()).setDocumentFilter(dec);

    	Container content = getContentPane();
    	content.setLayout(new BoxLayout(content, BoxLayout.Y_AXIS));


    	JScrollPane scroll1 =
    			new JScrollPane(area1,
    					JScrollPane.VERTICAL_SCROLLBAR_ALWAYS,
    					JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
    	content.add(scroll1,BorderLayout.CENTER);


		content.add(ipaddress,BorderLayout.CENTER);
		content.add(portNumber,BorderLayout.CENTER);

	JMenuBar JMB = new JMenuBar();
	setJMenuBar(JMB);
	JMenu file = new JMenu("File");
	JMenu edit = new JMenu("Edit");
	JMB.add(file);
	JMB.add(edit);

	file.add(Listen);
	file.add(Connect);
	file.add(Disconnect);
	file.addSeparator();
	file.add(Save);
	file.add(SaveAs);
	file.add(Quit);

	edit.add(Copy);
	edit.add(Paste);
	edit.getItem(0).setText("Copy");
	edit.getItem(1).setText("Paste");

	Save.setEnabled(false);
	SaveAs.setEnabled(false);

	setDefaultCloseOperation(EXIT_ON_CLOSE);
	pack();
	area1.addKeyListener(k1);
	setTitle("Disconnected");
	setVisible(true);
    }

    private KeyListener k1 = new KeyAdapter() {
	    public void keyPressed(KeyEvent e) {
		changed = true;
		Save.setEnabled(true);
		SaveAs.setEnabled(true);
	    }
	};

    Action Listen = new AbstractAction("Listen") {
	    public void actionPerformed(ActionEvent e) {
	    	saveOld();
	    	area1.setText("");

			listenerThread = new Thread(() -> {  											//We create a new thread to handle listening for new connections
                int port;                        											//so that the main thread for the GUI doesn't freeze up.
                try {
                    port = Integer.parseInt(portNumber.getText());  						//We check to see if a port number was written
                } catch (NumberFormatException e1) {                						//in the text field. If not, it defaults to
                    port = defaultPortNumber;                       						//40499.
                }
				registerOnPort(port);     													//This method works just like the on from DDistDemoServer.
				changed = false;
				Save.setEnabled(false);
				SaveAs.setEnabled(false);
                setTitle("I'm listening on 127.0.1.1:"+port); 								//The user is made aware that the program is listening.

				while (!Thread.interrupted()) {												//It tries to establish connections until interrupted.
					Socket socket = waitForConnections(); 									//This method works exactly like DDistDemoServer's.
                    area1.setText(""); 														//We clear the text insert area when a new connection has been made.

					if (socket != null) {
						setTitle("Connected to "+socket.getInetAddress().getHostAddress());	//Informs user of connection.
                        er = new EventReplayer(dec, area1, socket, true); 					//Creates a new aflevering2.EventReplayer for the connection.
						ert = new Thread(er); 												//Starts the aflevering2.EventReplayer in a new thread so it doesn't interfere with
						ert.start();          												//the GUI and ability to write text in area1.
                        try {
                            ert.join(); 													//We wait for the run() method in aflevering2.EventReplayer to finish up before going back
                            setTitle("I'm listening on 127.0.1.1:"+port); 					//to look for new connections.
                        } catch (InterruptedException e1) {
                            e1.printStackTrace();
                        }
                    }
				}
			});
			listenerThread.start(); 														//Starts listening.
	    }
	};

	private void registerOnPort(int port) {
		try {
			serverSocket = new ServerSocket(port);
		} catch (IOException e) {
			serverSocket = null;
			e.printStackTrace();
		}
	}

	private void deregisterOnPort() {
		if (serverSocket != null) {
			try {
				serverSocket.close();
				serverSocket = null;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	protected Socket waitForConnections() {
		Socket res = null;
		try {
			res = serverSocket.accept();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return res;
	}

	Action Connect = new AbstractAction("Connect") {
	    public void actionPerformed(ActionEvent e) {
	    	saveOld();
	    	area1.setText("");
            String ip = ipaddress.getText(); 										//First we just take whatever was written in the IP text field
            int port = Integer.parseInt(portNumber.getText()); 						//We then take the port number. No error handling here
	    	setTitle("Connecting to " + ip + ":" + port + "..."); 					//because we found it non-consequential.

            changed = false;
	    	Save.setEnabled(false);
	    	SaveAs.setEnabled(false);

			clientSocket = connectToServer(ip, port); 								//We connect to the server just like in DDistDemoClient.

			if (clientSocket != null) { 											//If the connection was established we then create a new aflevering2.EventReplayer for the
				setTitle("Connected to "+ ip +":"+ port); 							//client, and inform the user via the title.
                er = new EventReplayer(dec, area1, clientSocket, false); 			//The socket parameter allows the aflevering2.EventReplayer to
				ert = new Thread(er); 												//access the socket so it can create its object streams.
				ert.start();
            } else {
				setTitle("Connection time out"); 									//If no connection was made it will simply time out.
			}
	    }
	};

	protected Socket connectToServer(String ip, int port) {
		Socket res = null;
		try {
			res = new Socket(ip, port);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return res;
	}

	Action Disconnect = new AbstractAction("Disconnect") {
	    public void actionPerformed(ActionEvent e) {
	    	setTitle("Disconnected");
            ert.interrupt(); 														//We interrupt the aflevering2.EventReplayer's thread to close the streams.

			if (listenerThread != null) { 											//If the program was set to listen, we close up the listener thread.
                listenerThread.interrupt();
                deregisterOnPort(); 												//And then deregister the serverSocket just like in DDistDemoServer.
            }

			if (clientSocket != null) try { 										//If the program was connected as a client, we close that socket.
				clientSocket.close();
			} catch (IOException e1) {
				e1.printStackTrace();
			}

            area1.setText(""); 														//Finally we just clear up the text fields.
			//area2.setText("");
		}
	};

    Action Save = new AbstractAction("Save") {
	    public void actionPerformed(ActionEvent e) {
		if(!currentFile.equals("Untitled"))
		    saveFile(currentFile);
		else
		    saveFileAs();
	    }
	};

    Action SaveAs = new AbstractAction("Save as...") {
	    public void actionPerformed(ActionEvent e) {
	    	saveFileAs();
	    }
	};

    Action Quit = new AbstractAction("Quit") {
	    public void actionPerformed(ActionEvent e) {
	    	saveOld();
	    	System.exit(0);
	    }
	};

    ActionMap m = area1.getActionMap();

    Action Copy = m.get(DefaultEditorKit.copyAction);
    Action Paste = m.get(DefaultEditorKit.pasteAction);

    private void saveFileAs() {
	if(dialog.showSaveDialog(null)==JFileChooser.APPROVE_OPTION)
	    saveFile(dialog.getSelectedFile().getAbsolutePath());
    }

    private void saveOld() {
    	if(changed) {
	    if(JOptionPane.showConfirmDialog(this, "Would you like to save "+ currentFile +" ?","Save",JOptionPane.YES_NO_OPTION)== JOptionPane.YES_OPTION)
		saveFile(currentFile);
    	}
    }

    private void saveFile(String fileName) {
	try {
	    FileWriter w = new FileWriter(fileName);
	    area1.write(w);
	    w.close();
	    currentFile = fileName;
	    changed = false;
	    Save.setEnabled(false);
	}
	catch(IOException e) {
	}
    }

    public static void main(String[] arg) {
    	new DistributedTextEditor();
    }

}
