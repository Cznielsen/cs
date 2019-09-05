# dOpt Disposition 6 noter
---
- [dOpt Disposition 6 noter](#dopt-disposition-6-noter)
- [**Approximation Algorithms**](#approximation-algorithms)
        - [**Traveling Salesman Problem (TSP):**](#traveling-salesman-problem-tsp)
    - [**(I)LP Relaxation og afrunding**](#ilp-relaxation-og-afrunding)
- [**Randomiseret** **algoritmer**](#randomiseret-algoritmer)
    - [**Approximation Schemes**](#approximation-schemes)
- [**Local Search**](#local-search)
        - [**Held-Karp (lower) bound**](#held-karp-lower-bound)
    - [**k-Opt Neighbourhood**](#k-opt-neighbourhood)
        - [**2-Opt**](#2-opt)
        - [**3-Opt**](#3-opt)
    - [**Boosting local searching (vha. Metaheuristics)**](#boosting-local-searching-vha-metaheuristics)
        - [**Taboo Search**](#taboo-search)
        - [**Lin-Kernighan**](#lin-kernighan)
        - [**Metropolis Algorithm**](#metropolis-algorithm)
        - [**Simulated Annealing**](#simulated-annealing)
    - [**Evolutionary Algorithms**](#evolutionary-algorithms)
---
# **Approximation Algorithms**
Man skal ikke give op bare fordi et problem er NP-complete. Hvis input er lille, så vil en eksponentiel algoritme fungere helt fint. Ved nogle algoritmer kan vi isolere vigtige special cases som kører i polynomisk tid, f.eks. unary knapsack og 2SAT. Hvis ingen af de to forrige punkter er gældende, så kan vi også forsøge at **approksimere** os frem til en løsning. Denne løsning vil være **ikke-optimal**, men dette er ofte også godt nok.

Enhver algoritme har en **approksimationsratio** $\rho(n)$ i forhold til et givent problem. Dette er gældende, hvis der for ethvert input af størrelse $n$, findes en tilsvarende pris på at få en løsning $C$ ud fra algoritmen, samt at få en optimal løsning $C^*$ fra algoritmen. Sammenhængen er da:

$$max(\frac{C}{C^*}, \frac{C^*}{C}) \leq \rho(n)$$

Ratioen er en faktor der beskriver et bound. Den approksimerede løsning vil altid være højst $\rho$ gange ved siden af. F.eks. hvis den optimale løsning til et egentligt minimeringsproblem er $C$, så vil en approksimeret løsning have en løsning der er højst $2C$.

**Min vertex cover:**

Givet en uorienteret graf $G=(V,E)$, find den mindste delmængde $C \subseteq V$, som dækker hele $E$.
Algoritmen findes på dias 24 slide 5, og beviset for approksimationsratioen lige efter.

Vis denne algoritme til eksamens. Kørselstid: $O(E+V).

**Generel design/analyse trick:**

For at evaluere vores approksimerede løsning, så sammenligner vi den **ikke** til den egentlige optimale løsning. Grunden til dette er, at vi ofte ikke aner hvad den optimale løsning er. <br>
I stedet sammenligner vi vores løsningmed et **lower bound** (for minimeringsproblemer) for den optimale løsning.

Approksimationsalgoritmer virker ofte ved at konstruere en relaxation, ved at stille et lower bound og så derefter lave den relaxed løsning om til et feasible løsning, uden at forøge kørselstiden særligt meget.

### **Traveling Salesman Problem (TSP):**

Givet en $n \times n$ non-negativ distancematrix $d_{ij}$, find en permutation $\pi$ på $\{0,1,2,...,n-1\}$, der minimerer den samlede afstand pba. permutationen: $\sum_{i=0}^{n-1} d_{\pi (i), \pi((i+1) \ mod \ n)}$.

Det specifikke tilfælde af $d_{ij}$, hvor denne tilfredsstiler trekantuligheden (hvor to side af en trekant lagt sammen skal give mere end den sidste side) kaldes for **Metric TSP**. Vi kan kun approksimere Metric TSP, da approksimeringsalgoritmer for generel TSP er **NP**-hårdt med enhver faktor $\rho$, hvilket vil sige der kun findes en effektiv approksimeringsalgoritme for dette hvis $P=NP$.

**Approksimationsalgoritme:**

Først laver vi et lower-bound. Relaxations vi kan bruge: **Cycle covers** og **minimum spanning trees**. <br>
Selve algoritmen kan ses på dias 24 slide 11.

Idéen er at lave et minimum spanning tree, og så slette de nodes på turen hvor man går tilbage til et sted man har besøgt før. Dette kan umuligt være dyrere end at gå tilbage, fordi trekantsuligheden siger dette. F.eks.  at gå fra A -> B -> A -> C er altid dyrere end at gå fra A -> B -> C.

**Approksimationsratio:** 2. Kan ses på dias 24 slide 12

## **(I)LP Relaxation og afrunding**
Vi kan relaxe et Integer Linear Program, således at vi arbejder med uden for integer constraints, og så bagefter afrunde til nærmeste heltal. Det er et meget stærkt **scheme** som man bruger til at få approksimerede løsninger til mange np-hårde optimeringsproblemer.

Det er en god **heuristisk metode**. Det betyder egentlig at det er en god metode, hvis man skal prøve sig frem til en god løsning. Den er især god hvis man benytter sig af **randomized rounding**. Det er når man i stedet for at afrunde efter en statisk regel, afrunder til $1$ med sandsynlighed $x$, og afrunder til $0$ med sandsynlighed $1-x$.

**Min weight vertex cover:**  Givet en uorienteret graf $G=(V,E)$ med non-negative vægte $w(v), v \in V$, find delmængden $C \subseteq V$ som dækker $E$ og har **mindst vægt**. Min vertex cover er det specifikke tilfælde af denne, hvor vægtene for alle verticer et præcis 1.

Vi kan definere ovenstående problem som et ILP. Her vil vi gerne finde $(x_v)_{v\in V}$, der minimerer summens af vægtene (dvs. hvilke $v$ man skal vælge således at hele $E$ er dækket og man har mindst vægt.):

$min \sum_{v\in V} w(v) \cdot x_v$

srt:
- $x_v \in \mathbb{Z}$
- $0 \leq x_v \leq 1$
- $x_u + x_v \geq 1$, for alle $(u, v) \in E$

Vi kan så relaxere ovenstående formulering, ved at sørge for at $x_v$ ikke behøver være heltal. Så bliver constraint $x_v \in \mathbb{Z} \rightarrow x_v \in \mathbb{R}$. Tal i $\mathbb{R}$ er reelle tal, som også kan være decimaltal. Når vi er færdige afrunder vi den "optimale løsning" $x^*$ vi får ud af det til nærmeste heltal. F.eks. $x_v = 1$ hvis og kun hvis $x_v^* \geq \frac{1}{2}$.

Den afrundede løsning **er** et cover (dækkende), hvis $(u,v) \in E$, så vil summen af $x_u^* + x_v^* \geq 1$, og derfor må mindst én af dem også være $1$.

**Approksimationsratioen (for MWVC):** Hvis $z^* = \sum w(v) x_v^*$, dvs. være prisen for en optimal **LP** løsning, så vil summen $\sum w(z) x_v \geq 2 \sum w(v) x_v^*$, da vi kun runder op hvis $x_v^*$ er større end en halv ($\frac{1}{2}$). Siden prisen for en optimal LP løsning er mindre end en optimal ILP løsning, dvs. $z^* \leq$ cost of optimal ILP sollution, så vil vores algoritme have en approksimationsratio på $2$.

# **Randomiseret** **algoritmer**
Randomiserede algoritmer går ud på, at man for hver boolsk variabel i ens problem tildeler sandhedsværdien på baggrund af et **fair coinflip**, dvs.  at hver mønt har 50% chance for at blive enten TRUE eller FALSE.

- Vi påstår at det **forventede** antal **tilfredsstillede** clauses er mindst $7/8m$, hvor $m$ er det totale antal clauses. 
- Her siger vi at algoritmen har en **forventet approksimationsratio** på $8/7$.

**Analyse:**
Lad $Y_i$ være en stokastisk variabel. Den vil have værdien $1$, hvis den $i$'de clause bliver tilfredsstillet, og $0$ ellers. Lad $Y$ være det totale antal af tilfredsstillede clauses. Hvis $Pr[X = 1]$ angiver sandsynligheden for at $X=1$, så:

- $Pr[Y_i = 1] = 1$, hvis den $i$'de clause indeholder både en variabel og dens negering.
- $Pr[Y_i = 1] = 1-(\frac{1}{2})^3=7/8$, hvis den $i$'de clause **ikke** indeholder en variabel og dens negering.

Hvis $E[X]$ er den forventede (expected) værdi af $X$, så:

- $E[Y_i]=Pr[Y_i = 1] \geq 7/8$
- $E[Y] = E[\sum Y_i] = \sum E[Y_i] \geq (7/8)m$

**Bemærkninger:** Det er muligt at **derandomize** algoritmer, hvorfra vi får en deterministisk approksimationsalgoritme med en approksimationsratio på $8/7$. Vi kan **ikke** få en lavere ratio end dette, med mindre $P=NP$.

## **Approximation Schemes**
Nogle optimeringsproblemer kan ikke approksimeret særligt effektivt. Dette gælder for alle approksimationsratioer $1+\epsilon$ for alle $\epsilon > 0$.

Et **approximation scheme** tager et ekstra input $\epsilon > 0$, og outputter en løsning som ligger inden for $1+\epsilon$ faktor af den optimale løsning. 

**PTAS / FPTAS:**

Med dette kan vi definere **PTAS** (Polynomial Time Approximation Scheme) og **FPTAS** (Fully Polynomial Time Approximation Scheme).
- PTAS er en slags approksimationsalgoritme, der for fixed $\epsilon > 0$ kører alle algoritmer i polynomisk tid baseret på inputlængden $n$.
- FPTAS er ligesom PTAS, ud over at dens kørselstid også afhænger af $1/\epsilon$ ud over $n$. Da dette er mere restriktivt er det også mere brugbart i praksis.

Med disse algoritmer kan vi **ikke garantere en approksimationsratio**, det er derfor vi ønsker at have en mere restriktiv algoritme.

Eksempel på FTPAS: **Knapsack**

# **Local Search**
Local search er en heuristisk metode man bruger til at løse beregneligt svære opgaver inden for optimeringsproblemer. Det handler om at man ud fra en initiel løsning prøver at forbedre denne, ved "lokalt" at finde en bedre løsning. Denne initielle løsning kunne f.eks. være **Christofides-algoritmen** (En approksimeringsalgoritme man bruger til TSP). <br>
Her kunne man også bruge **greedy heuristic** (tager den lokalt bedste løsning hver gang, dvs. man tager de tætteste byer i området før man bevæger sig videre). <br>
Der findes også **Nearest Neighbour**, som er en metode man har brugt til TSP, hvor man starter fra en tilfældig by, og så besøger den tætteste ubesøgte by hver gang, indtil man har besøgt alle byer.

### **Held-Karp (lower) bound**
Er et lower bound på den optimale rute i en TSP. Man bruger tit dette fordi det ikke er muligt at beregne den optimale rute. Dette bound er løsningen til et standard LP relaxation af TSP'en. Den garanterer mindst $2/3$-værdien af den sande værdi for metrisk TSP. **I virkeligheden giver den en meget bedre værdi.**

## **k-Opt Neighbourhood**
En række metoder der er beregnet til at løse travelling salesman problemet. Her er $k$ antallet af kanter der bliver rykket rundt på ad gangen. Generelt er kørselstiden $O(n^k)$.

### **2-Opt**
Idéen med denne algoritme er at køre igennem den initielle rute, og tage alle de steder hvor ruten krydser over sig selv, og så flytte om på ruten således at den ikke krydser sig selv længere.

En fuld 2-opt lokal søgning vil sammenligne alle mulige (valide) kombinationer af udskiftninger.

Vi bytter næsten altid rundt på den måde, så vi ikke får skabt to subture (altså to uafhængige cykler).

### **3-Opt**
Denne algoritme kører også igennem en initiel rute. I hver iteration sletter den 3 kanter (edges) for at kunne skabe 3 nye sub-ruter. Hver gang den sletter 3 kanter vil der være 7 nye måder de kan genindsættes på. Algoritmen tjekker alle de 7 forskellige måder at genindsætte kanterne på, og vælger den optimale løsning.

Denne process forsætter iterativt indtil alle kombinationer i netværket er forsøgt. Den har en **tidskompleksitet** på $O(n^3)$.

Den bedste lokale løsning er selvfølgelig den med den mindste cost/distance i alt.

## **Boosting local searching (vha. Metaheuristics)**
Vi vil gerne finde ud af, hvordan vi kan undslippe i lokalt optimum (så vi kan komme til globalt optimum i stedet). Her har vi en række forskellige metoder vi kan bruge som alle sammen er Metaheuristics. Det betyder at det er heuristiske metoder som man bruger til at forbedre andre heuristiske metoder.

### **Taboo Search**
Taboo search fungerer ved at når man har opnået et optimum skal man bare blive ved med at søge. Dette har en tendens til at **cykle en rundt mellem lokalt optimum og den næstbedste**. Dette kan undgås ved at:
- Holde en list over løsninger vi allerede har set (og derfor prøve andre). Dette er vores Taboo-kriterie, og vi gør det **"Taboo"** at gå ind i nogen af de løsninger vi har set før.
    - Denne løsning er ikke specielt brugbar, da listen over løsninger hurtigt bliver meget stor, og søgningen har en tendens til stadigt at cirkle rundt om lokalt optimum´.
- Vi kan gøre tidligere løsninger som vi har besøgt **for nyligt** taboo i f.eks. 4 iterationer. Så skal den bare vælge den "mindst dårlige" løsning af dem som ikke er taboo.

%% "Pure" Taboo search fungerer ikke særligt godt for TSP (ifølge Johnson &T McGeoch). <br>
**Generel Bemærkning:** Heuristikker bør blive sammenlignet på en tidsudlignet basis (dvs. man skal tage i betragtning hvor lang tid de tager i stedet for hvor gode de er).

### **Lin-Kernighan**
En meget succesfuld heuristisk metode til TSP. Den er som et blanding af 3-Opt, 2-Opt og Taboo searching, i det den booster 3-opt løsningen ved nogle gange at kigge på "Op ad bakke" (dvs. værre) 2-opt løsninger. 

Ligesom de andre swapper den par af sub-ture og genererer en ny tur ud fra dette. Lin-Kernighan er adaptiv og skifter nogle gange to kanter ud, nogle gange tre kanter ud, afhængig af hvad der giver det bedste resultat (en kortere tur). Den kræver et Taboo-kriterie ligesom Taboo search.

Kan itereres med forskellige start punkter for at få et bedre resultat (Hvis man har meget CPU-tid).eeeeee

### **Metropolis Algorithm**
Metropolis algoritmen er en algoritme inspirered af statistisk fysik. Den gør det muligt at undslippe lokale minima ved at tillade en bevægelse mod en værre løsning med en vis sandsynlighed. Denne sandsynlighed er reguleret af en parameter som vi kalder for **systemets temperatur** $T$. Jo højere temperatur --> Jo større sandsynlighed for at tillade at gå til en ringere løsning.

Den fungerer ved at man i hver loop-iteration vælger en tilfældig nabo af den man by/knude man kigger på lige nu, og så assigner man den som den bedste løsning med sandsynlighed:
$$min(\bm{e}^{(v(y)-v(z))/T}, 1)$$

Dette bliver man ved med indtil man ikke vil køre algoritmen længere. Denne formel gør det muligt at **man altid accepterer forbedringer til systemet**, og dårlige træk er accepteret i mindre grad hvis de er meget dårlige, og i større grad hvis temperaturen er høj. Man kan sagtens skifte formlen ud med noget andet hvis man vil.

**Hvilken værdi skal $T$ have?:** Hvis $T$ er **stor** så når den en løsning hurtigt, men denne løsning er ikke nødvendigvis særlig god. Hvis $T$ er **lille** så opnås en løsning meget langsommere, men denne er sandsynligt en god løsning. Hvis $T=0$, så er det bare normal local search.
- Vi vil gerne vælge en optimal $T$. Løsning: **Simulated Annealing**

### **Simulated Annealing**
Den fungerer på samme måde som Metropolis-algoritmen, men her kan $T$ (temperaturen) skifte værdi under kørsel af algoritmen. <br>
$T$ starter høj, men bliver langsomt mindre, hvilket gør algoritmen både hurtig og præcis. Den minder meget om **Gradient Descent** (Skridtstørrelse afhænger af værdien).

Hvis man sænker værdien af $T$, så vil den endelige løsning med høj sandsynlighed være **optimal**. I praksis bliver vi nødt til at sænke $T$ noget hurtigere, da algoritmen ellers ville tage for lang tid.

**Evaluering af metoden:** Simulated Annealing sammen med 2-opt neighbourhood er god, men neighborhoods skal trimmes (færre valgmuligheder) for at gøre algoritmen effektiv. Den er dog stadig ikke lige så god som Lin-Kernighan (LK) eller Iterated Lin-Kernighan (ILK) i forhold til tidsforbruget.

## **Evolutionary Algorithms**
Vi vil gerne have at gode løsninger overlever og dårlige løsninger dør (survival of the fittest). Vi har en såkaldt **befolkning** af løsninger. Vi **muterer** vores løsninger, hvilket giver os en række nye løsninger. Vi har også muligheden for at **rekombinere** forskellige løsninger, hvilket også giver os nye løsninger. Vi **dræber** løsninger tilfældigt, men bedre løsninger skal have en lavere sandsynlighed for at blive dræbt (hvilket i længden lader de bedste løsninger overleve).

Man kombinerer to løsninger ved at tage union (foreningen) at løsningerne, og så vælge den optimale rute når man bruger begge løsningers kanter.

Efter lang tid vil vi have en virkelig god løsning. Denne genetiske algoritme er helt klart den bedste approksimerede løsning til TSP, hvis man har lang CPU-tid.
