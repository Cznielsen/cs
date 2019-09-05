// Vi lægger alle vores domæner ind i en enkel fil for at spare plads

public class Vare {
	public String stregkode;

	public Vare(String stregkode){
		this.stregkode = stregkode;
	}
}


public class Kontanter {
	public double value = 0;

	public Kontanter(double value){
		this.value = value;
	}

}

public class Kvittering {
	public Vareliste text;

		public Kvittering(Vareliste text){
			this.text = text;
		}
}

public class Kort {
	public String kortID;

	public Kort(String ID){
		kortID = ID;
	}

	public void betal(double b){
		//Overfør penge
	}

}

public class Vareinfo {
	private <T>[] info;

	public Vareinfo(<T>[] info){
		this.info = info;
	}
}

public class KøbVare{
	private boolean købAfbrudt;
	private boolean vægtOK = false;
	private Database d;
	private <T> vareregister = <E>
	private Kortlæser k;
	private KontantBetalingsSystem kbs;
	private Printer p;
	private Vægt vægt;

	public KøbVare(Database d){
		købAfbrudt = false;
		d = new Database(vareregister);
		k = new Kortlæser();
		kbs = new KontantBetalingsSystem();
		p = new Printer();
		vægt = new Vægt();
	}

	public void setLanguage(TouchScreen ts, String sprog){
		ts.vælgSprog(sprog);
	}

	public void afbrydKøb(){
		købAfbrudt = true;
	}

	public Vareinfo infoOmStregkode(Database d, String stregkode){
		if (d.slåStregkodeOp(stregkode) == skalgodkendes){

		}
	}

	public void vareGodkendt(TouchScreen ts, Vægt v){
		ts.opdater("LægVarePåVægten");
		v.weightChanged()
	}

	public void måSkanneNæsteVare(StregkodeSkanner s){
		s.måSkanneIgen();
	}

	public void skannetKode(String stregkode){
		infoOmStregkode(d, stregkode);
	}

	public void sletForrigeSkan(TouchScreen s){
		s.setForrige();
	}

	public void setBetalingsform(String s, TouchScreen ts, Vareliste v){
		if(s == "Kort"){
			k.betalViaKort();
			ts.opdater("betaling godkendt");
			p.udskrivBon(v);
		}
		
		else {
			kbs.betalViaKontant();
			ts.opdater("betaling godkendt");
			p.udskrivBon(v);
		}
	}

	public void tagVarer(TouchScreen ts){
		while (vægt.getWeight() != 0){
			(ts.opdater("Tag varer");
		}
		reset();
	}

	public void reset(){
		//reset
	}

}

public class TouchScreen{
	private String sprog;
	private boolean godkendt;
	private Screen s;
	private Arraylist<Vareinfo> vareliste;

	public TouchScreen(){
		sprog = "DK";
		godkendt = true;
		vareliste = new Arraylist();
	}

	public void opdater(String skærmindhold){
		s = new Screen(skærmindhold);
	}

	public void vælgSprog(String sprog){
		this.sprog = sprog;
	}

	public void afbrydKøb(KøbVare computer){
		computer.afbrydKøb();
	}

	public void setGodkendt(){
		godkendt = true;
	}

	public void vareSkalGodkendesAfPersonale(KøbVare computer){
		godkendt = false;
		while (godkendt == false){
		}
		computer.vareGodkendt();
	}

	public void visVareListeOgTilføjVare(Vareinfo v){
		vareliste.add(v);
		opdater("Vis vareliste");
	}

	public void sletForrige(){
		vareliste = vareliste.remove(vareliste.size()-1);
	}

	public void vælgBetalingsform(Købvare computer, String betalingsform){
		computer.setBetalingsform(betalingsform);
		opdater("betalingsform");
	}

}

public class StregkodeSkanner{
	private måSkanneNæsteVare;
	public StregkodeSkanner(){
		måSkanneNæsteVare = true;
	}

	public String skanStregkode(KøbVare computer, Vare v){
		computer.skannetKode(v)
		måSkanneNæsteVare = false;
	}

	public måSkanneIgen(){
		måSkanneNæsteVare = true;
	}
}

public class Database{
	private <T> varedatabase;

	public Database(<T> vareregister){
		varedatabase = vareregister;
	}

	public <T> slåStregkodeOp(String stregkode){
		for (Vareinfo v : varedatabase){
			if(stregkode == v.stregkode)
				return v;
		}

	}

}

public class Vægt{
	private int vægt;

	public Vægt(){
		vægt = 0;
	}

	public boolean weightChanged(int nyvægt){
		while (vægt != nyvægt){
		}
		return true;
	}

	public int getWeight(){
		return vægt;
	}
}

public class Kortlæser{
	private boolean aktiveret;

	public Kortlæser(){
		aktiveret = false;

	}

	public void betalViaKort(){
		aktiveret = true;
	}

	public void betalMedKort(double beløb, Kort k){
		while (aktiveret == false){
		}
		k.betal(beløb);
	}
}

public class KontantBetalingsSystem{
	private boolean aktiveret;

	public Kortlæser(){
		aktiveret = false;
	}

	public void betalViaKontant(){
		aktiveret = true;
	}

	public void betalMedKontant(double beløb, Kontanter k){
		while (aktiveret == false){
		}
		double result = 0;
		while (result != beløb){
			result += optælIndkastedePenge(k);
		}

	}

	public double optælIndkastedePenge(Kontanter k){
		// Optæller penge
	}
}

public class Printer{

	public Printer(){
	}

	public void udskrivBon(Kvittering k){
		//printer k
	}
}


















