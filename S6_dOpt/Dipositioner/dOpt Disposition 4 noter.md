# dOpt Noter 4
----
- [dOpt Noter 4](#dopt-noter-4)
- [**Beslutningsproblemer og Sprog**](#beslutningsproblemer-og-sprog)
- [**Turingmaskiner og P**](#turingmaskiner-og-p)
    - [**Turingmaskine**](#turingmaskine)
    - [**(Polynomial) Church-Turing Thesis**](#polynomial-church-turing-thesis)
        - [**Kompleksitetsklasse P:**](#kompleksitetsklasse-p)
        - [**Polynomial Church-Turing Thesis:** <br>](#polynomial-church-turing-thesis-br)
        - [**Polynomial-time computable map**](#polynomial-time-computable-map)
- [**NP og P vs NP-problemet**](#np-og-p-vs-np-problemet)
    - [**NP-klassen**](#np-klassen)
    - [**P vs NP**](#p-vs-np)
- [**Reduktioner og NPC-klassen**](#reduktioner-og-npc-klassen)
    - [**Reduktion**](#reduktion)
    - [**NP-completeness**](#np-completeness)
    - [**NP-hardness**](#np-hardness)
- [**Boolean Circuits**](#boolean-circuits)
    - [**Cell state vector**](#cell-state-vector)
    - [**Ekstra info omkring boolean circuits:**](#ekstra-info-omkring-boolean-circuits)
- [**Cook's Theorem**](#cooks-theorem)
    - [**Terminologi**](#terminologi)
    - [**CIRCUIT SAT - SATISFIABILITY PROBLEM**](#circuit-sat---satisfiability-problem)
    - [**Teoremet**](#teoremet)
----

# **Beslutningsproblemer og Sprog**
- Et beslutningsproblem er et problem som har et ja/nej svar.
- Vi kigger primært på **sprog** $L$, der er en delmængde af {0,1}*
    - Medlemmer af sproget er **ja**-instancer og ikke-medlemmer af sproget er **nej**-instancer.
    - Simpelt sprog er ikke en restriktion: en binær streng kan benyttes til at danne andre sprog, som f.eks. ascii og unicode.

# **Turingmaskiner og P**
## **Turingmaskine**
En **Turingmaskine** er en primitiv (men generel) beregnelighedsmodel. Den bruges bl.a. til at *præcisere* begrebet **Polynomisk-tid algoritme.**

TM består af:
1. Et (muligvis udendeligt) bånd, der er opdelt i celler. Hver celle har et element fra et alfabet $\Sigma$. I vores model har vi tre tegn i alfabetet: 0,1 og #. I dette tilfælde betyder # at cellen er blank.  Hver celle har også en **position**, som beskriver hvor den ligger i forhold til cellerne rundtom sig. F.eks. er celle -17 lige til venstre for celle -16. <p>
2. flere ting. se slides.

En TM afgører (decides) et sprog L, hvis den terminerer på alle input, og accepterer præcis de input, som er i L.

## **(Polynomial) Church-Turing Thesis**
**Church-Turing Thesis:** <br>
*"Ethvert beslutningsproblem der kan løses af en **mekanisk procedure** kan løses af en Turingmaskine."*

**Bevis:** Kan ikke bevises, da "mekanisk procedure" ikke er et stringent term. Vi har dog meget bevismateriale der understøtter teoremet.

### **Kompleksitetsklasse P:**
- Givet en turingmaskine der afgører et sprog, siger vi at TM afgører et sprog i **polynomisk tid**, hvis der findes en fixed polynomium $p$, således at antallet af skridt i TM på ethvert input $x$ hjøjst er $p(|x|)$, hvor $|x|$ er længden af $x$.

- Kompleksitetsklassen **P** er da klassen af alle sprog, der er afgjort i polynomisk tid af en eller anden Turingmaskine.

### **Polynomial Church-Turing Thesis:** <br>
*"Et beslutningsproblem kan løses i polynomisk tid ved at bruge en **fornuftig** beregnelighedsmodel, hvis og kun hvis den kan løses i polynomisk tid af en Turingmaskine"*

Denne thesis er smart, da man bare kan skrive en algoritme i pseudokode og henvise til tesen i stedet for rent faktisk at konstruere en Turingmaskine til at tjekke om et beslutningsproblem er i **P**.

### **Polynomial-time computable map**
En map-funktion $f : \{0,1\}^* \rightarrow \{0,1\}^*$. Vi siger at $f$ er **polynomisk-tid beregnelig** hvis følgende to egenskaber er sande:
1. Der er et polynomium p, således at $\forall x : |f(x)| \leq p(|x|)$.  dvs at funktionen tager højst lige som mange skridt som polynomiet af x, for alle $x$.
2. Der findes et sprog $L_f \in \bm{P}$, hvor $L_f$ er beslutningsproblemet associeret med $f$ defineret ved. <br> 
$$L_f = \{ \langle x, b(j), y \rangle | x \in \{0,1\}^*, j \in \mathbb{N}, y \in \{0,1\}, f(x)_j = y \}$$
Hvor $b(j)$ er den binære repræsentation af $j$.

# **NP og P vs NP-problemet**
## **NP-klassen**
$\bm{NP}$ er formelt defineret til at være klassen af sprog $L$ hvor der eksisterer et sprog $L'\in\bm{P}$ og et polynomium $p$, således at:
$$\forall x: \quad x \in L \Leftrightarrow [\exists y \in \{0,1\}^* : |y| \leq p(|x|) \land \langle x,y \rangle \in L']$$
Her betyder $\langle x,y \rangle \in L'$ at $y$ er en potentiel løsning til det problem vi prøver at afgøre med løsningsforslag $x$.
1. $L' \in \bm{P}$ betyder, at vi ønsker det muligt effektivt (højst polynomisk) at tjekke om en given løsning $y$ er gyldig.
2. Potentielle løsninger skal have en længde på højst $p(|x|)$, dvs. polynomisk længde i probleminstansen.

Kort fortalt er **NP** klassen af alle problemer, hvor en løsning kan verificeres ved at gennemgå alle mulige løsninger (exhaustive search) og se om en af dem er en faktisk løsning. Disse løsninger skal kunne verificeres af deterministiske beregninger i polynomisk tid. Dette giver os:
$$\bm{P} \subseteq \bm{NP}$$
Eftersom alle problemer der kan løses i polynomisk tid i hvert fald også kan verificeres i polynomisk tid. 
- Det spændende spørgsmål er så, om alle problemer der har en **simpel exhaustive search**-løsning også har en polynomisk-tid algoritme der kan løse problemet.

## **P vs NP**
Forskere er i tvivl om hvordan $\bm{P}$ hænger sammen med $\bm{NP}$. De er blevet enige om at $P \subseteq NP$, men ikke om $P = NP$ eller om $P \neq NP$. Dette er et af de helt store åbne problemer inden for datalogien.

Åbent problem: $\bm{P} = \bm{NP}?$ 
- De fleste mener ikke at det er. Hvis det var, så ville der være en algoritmisk procedure der tager en formel statement $t$ i sytemet **ZFC** og tjekker om den har et bevis af længde $n$. Hvis den har det, vil den terminere i polynomisk tid med det korteste statement som bevis.
- Se **Proposition 2** for ovenstående beskrivelse samt bevis af dette.

# **Reduktioner og NPC-klassen**
## **Reduktion**
Hvis vi har to sprog $L_1$ og $L_2$, så er der en **reduktion** fra $L_1$ til $L_2$ (skrives som $L_1 \leq L_2$) hvis der findes en polynomisk-tid beregnelig funktion $r$ (reduktionen), således at $x \in L_1$ *hvis og kun hvis* $r(x) \in L_2$ for alle $x \in \{0,1\}^*$ 

- $\leq$-notationen antyder en slags "delvis rækkefølge" imellem sprogene, men det fungerer ikke på samme måde som "mindre-eller-lig-med"-tegnet, dvs. at den **tilfredsstiller ikke** $L_1 \leq L_2 \land L_2 \leq L_1 \implies L_1 = L_2$. 

Derimod er den **transitive egenskab** tilfredsstillet: <br>
- **Proposition 3:** Hvis $L_1 \leq L_2$ og $L_2 \leq L_3$, så er $L_1 \leq L_3$
    - Bevis: Se noter sektion 4.

Andre propositioner:
- **Proposition 4: downward closure af P:** Hvis $L_1 \leq L_2$ og $L_2 \in \bm{P}$, så er $L_1 \in \bm{P}$

## **NP-completeness**
Et koncept der **under antagelse** af $\bm{P} \neq \bm{NP}$ siger at der **ikke findes** en effektiv (polynomisk) algoritme til alle elementerne i klassen. Dette er brugbart da man ikke behøver at spilde tid på at prøve at finde en effektiv algoritme.

**Klassen repræsenterer alle de problemer $x$ i $NP$, hvorudfra man kan få ethvert andet $NP$-problem fra $y$ til $x$ i polynomisk tid.**

Konsekvensen af ovenstående er, at hvis vi kan finde en løsning til $y$ som er effektiv (dvs. polynomisk-tid), så kan vi også finde en lige så hurtig løsning til $x$ da $x$ er reducérbar ud fra $y$

## **NP-hardness**
- **Proposition 5:** Lad $L$ være et $NP$-hårdt sprog. Hvis $P \neq NP$, så vil $L \notin P$

Et problem $x$ er $NP$-hårdt hvis der findes et $NP$ problem $y$, således at man kan reducere $y$ til $x$ i polynomisk tid. Dvs.: $y \leq x$.

Eftersom alle $NP$-complete problemer kan reduceres til hinanden, så kan alle $NP$-complete programmer også reduceres til ethvert $NP$-hårdt problem i polynomisk tid. Hvis der så findes en løsning til ethvert $NP$-hårdt problem i polynomisk tid, så vil der være en løsning til alle $NP$-problemer i polynomisk tid.


$NP$-hårde problemer ligger ikke nødvendigvis i $NP$, men vi er særligt interesserede i dem som gør. Dem som gør kalder vi for $NP$-complete.

# **Boolean Circuits**
Et boolsk kredsløb (Boolean circuit), har $n$ input og $m$ output. Det er en **orienteret acyklisk graf** $G=(V,E)$, med $V$ knuder kaldt for **gates** (porte) og kanterne i mellem disse kaldt for **wires**. Hver port kan have et label, som er **ét element** fra en af følgende: 
- $\{AND, OR, NOT ,COPY\}$
    - Logisk AND/OR/NOT af værdierne. Copy returnerer samme værdi.
    - AND/OR er binære funktioner, NOT/COPY er unære.
- $\{0,1\}$, hvilket hhv. betyder false/true
- $\{X_1,X_2,...,X_n\}$, der er fra mængde *Variable symbols*.

Bemærk: **Input gates** er sources i grafen $G$. **Output gates:** $o_1,o_2,...,o_m$

Da grafen er acyklisk returnerer den altid en værdi. kredsløbets funktion betegnes med $C$, således at:

$$ C(x)=y $$

hvor $x$ er input og $y$ er output.

## **Cell state vector**
Lad $c_{t,i} \in \{0,1\}^s$ være en repræsentation af følgende information. En **cell state vector** består af:

- Symbolet i cellen ved tidspunkt $t$
- Om pointerens hoved peger på celle $i$ på tidspunkt $t$
- Hvis hovedet peger på celle $i$, hvad er da tilstanden af Turingmaskinens **finite control** på tidspunkt $t$?

Heltallet $s$ afhænger kun af Turingmaskinen, ikke på beregningen, tidspunktet eller cellenummeret.

For at sikre at $c_{t,i}$ er defineret for all $t$, så lader vi $c_{(t+1)i}=c_{t,i}$, hvis beregningen allerede er termineret på tidspunkt $t$.

Vi kan altså bestemme $c_{t,i}$ ud fra $c_{t-1,i-1}, c_{t-1,i}, c_{t-1,i+1}. <br>
Da vi kan dette må der være en boolsk funktion $h$ som har denne funktionalitet, som kun afhænger af Turingmaskinen. Den vil da se således ud: 
$$ c_{t,i} = h(c_{t-1,i-1}, c_{t-1,i}, c_{t-1,i+1})$$

## **Ekstra info omkring boolean circuits:**
- Et boolsk kredsløb kan beskrive enhver boolsk funktion (Lemma 8)
- Et boolsk kredsløb kan beskrive om en TM vil acceptere en streng (lemma 9)
- Forskellen mellem kredsløb og TM er at kredsløb kun tager en "endelig" længde input og er acyklisk.

# **Cook's Theorem**
## **Terminologi**
**Literal:** En boolsk variabel eller dens negering.

**Clause:** En clause er en disjunktion (en række ting med logisk OR imellem). feks. er $(X_1 \lor X_2 \lor \neg X_3)$ en clause med de tre literals inden i.

**Conjunctive Normal Form (CNF) formel:** En konjunktion (ting med logisk AND imellem) mellem et antal clauses. F.eks. er $(X_1 \lor X_2 \lor \neg X_3) \land (X_3 \lor \neg X_1)$ en CNF-formel.

## **CIRCUIT SAT - SATISFIABILITY PROBLEM**
Givet en CNF-formel afgører SAT om der findes en løsning når de forskellige boolske variabler er tildelt en sandhedsværdi. F.eks. for CNF-eksemplet ovenfor er en løsning $X_1=X_2=X_3=true$, hvilket evaluerer SAT til true. Hvis en **assignment ikke tilfredsstiller** CNF-formlen, så evaluerer SAT til false.

Denne algoritme genereliserer normal SAT, da CNF's svarer til formler, og formler svarer til kredsløb.

## **Teoremet**
Den nemmeste måde at vise at et problem er NP-komplet på, er at reducere det til et andet NP-komplet problem. For at kunne gøre dette skal man have et udgangspunkt man kan starte fra. Dette gjorde Cook med hans bevis for at **SAT** $\in NPC$.

Først så vises at SAT er i klassen NPC, dernæst vises at CIRCUIT SAT er i klassen NPC. Tilsidst udføres en reduktion fra CIRCUIT SAT til SAT, for at vise teoremet om at man kan reducere fra et andet problem i samme eller sværere klasse.

Hvis vi kunne reducere fra en svær klasse ned i en nemmere, så ville vi kunne reducere alle problemer til nogen i $P$, hvilket ville mene at vi kunne løse dem i polynomisk tid.

