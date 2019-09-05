
;; dProgSprog DA6 - Aflevering 2
;; Christian Zhuang-Qing Nielsen
;; 201504624, christian@czn.dk


;; ============  ## Exercise 1 ## =============

;; ## Afled og tegn de regulære udtryk ##

;; 1)  (seq (atom 1) (seq (atom 2) (seq (atom 3) (seq (atom 4) (empty)))))
;; 2)  (seq (atom 1) (seq (atom 2) (seq (atom 3) (atom 4))))
;; 3)  (seq (seq (empty) (seq (atom 1) (atom 2))) (seq (empty) (seq (atom 3) (atom 4))))
;; 4)  (seq (seq (seq (atom 1) (atom 2)) (atom 3)) (atom 4))
;; 5)  (seq (seq (seq (seq (empty) (atom 1)) (atom 2)) (atom 3)) (atom 4))



;; #### Regexp 1) afledt fra venstre:

;; <regexp> ->
;; (seq <regexp> <regexp>) ->
;; (seq (atom <atom>) <regexp>) ->
;; (seq (atom 1) <regexp>) ->
;; (seq (atom 1) (seq <regexp> <regexp>)) ->
;; (seq (atom 1) (seq (atom <atom) <regexp>)) ->
;; (seq (atom 1) (seq (atom 2) <regexp>)) ->
;; (seq (atom 1) (seq (atom 2) (seq <regexp> <regexp>))) ->
;; (seq (atom 1) (seq (atom 2) (seq (atom <atom>) <regexp>))) ->
;; (seq (atom 1) (seq (atom 2) (seq (atom 3) <regexp>))) ->
;; (seq (atom 1) (seq (atom 2) (seq (atom 3) (seq <regexp> <regexp>)))) ->
;; (seq (atom 1) (seq (atom 2) (seq (atom 3) (seq (atom <atom>) <regexp>)))) ->
;; (seq (atom 1) (seq (atom 2) (seq (atom 3) (seq (atom 4) <regexp>)))) ->
;; (seq (atom 1) (seq (atom 2) (seq (atom 3) (seq (atom 4) (empty)))))

;; ####  Regexp 1) syntakstræ:

;; <regexp>
;;    |
;;    |
;;  (seq <regexp> <regexp>)
;;         /         |
;;        /          |
;;  (atom <atom>)  (seq <regexp> <regexp>)
;;          |              |          \
;;          |              |           \
;;          1         (atom <atom>)   (seq <regexp> <regexp>)
;;                            |              |          \
;;                            |              |           \
;;                            2         (atom <atom>)    (seq <regexp> <regexp>)
;;                                               |               |          \
;;                                               |               |           \
;;                                               3          (atom <atom>)   (empty)
;;                                                                  |
;;                                                                  |
;;                                                                  4


;; #### Regexp 2) afledt fra venstre:

;; <regexp> ->
;; (seq <regexp> <regexp>) ->
;; (seq (atom <atom>) <regexp>) ->
;; (seq (atom 1) <regexp>) ->
;; (seq (atom 1) (seq <regexp> <regexp>)) ->
;; (seq (atom 1) (seq (atom <atom) <regexp>)) ->
;; (seq (atom 1) (seq (atom 2) <regexp>)) ->
;; (seq (atom 1) (seq (atom 2) (seq <regexp> <regexp>))) ->
;; (seq (atom 1) (seq (atom 2) (seq (atom <atom>) <regexp>))) ->
;; (seq (atom 1) (seq (atom 2) (seq (atom 3) <regexp>))) ->
;; (seq (atom 1) (seq (atom 2) (seq (atom 3) (atom <atom>)))) ->
;; (seq (atom 1) (seq (atom 2) (seq (atom 3) (atom 4))))

;; #### Regexp 2) syntakstræ:

;; <regexp>
;;    |
;;    |
;;  (seq <regexp> <regexp>)
;;         /         |
;;        /          |
;;  (atom <atom>)  (seq <regexp> <regexp>)
;;          |              |          \
;;          |              |           \
;;          1         (atom <atom>)   (seq <regexp> <regexp>)
;;                            |              |          \
;;                            |              |           \
;;                            2         (atom <atom>)  (atom <atom>)
;;                                               |              |
;;                                               |              |
;;                                               3              4


;; #### Regexp 3) afledt fra venstre:

;; <regexp> ->
;; (seq <regexp> <regexp>) ->
;; (seq (seq <regexp> <regexp>) <regexp>) ->
;; (seq (seq (empty) <regexp>) <regexp>) ->
;; (seq (seq (empty) (seq <regexp> <regexp>)) <regexp>) ->
;; (seq (seq (empty) (seq (atom <atom>) <regexp>)) <regexp>) ->
;; (seq (seq (empty) (seq (atom 1) <regexp>)) <regexp>) ->
;; (seq (seq (empty) (seq (atom 1) (atom <atom>))) <regexp>) ->
;; (seq (seq (empty) (seq (atom 1) (atom 2))) <regexp>) ->
;; (seq (seq (empty) (seq (atom 1) (atom 2))) (seq <regexp> <regexp>)) ->
;; (seq (seq (empty) (seq (atom 1) (atom 2))) (seq (empty) <regexp>)) ->
;; (seq (seq (empty) (seq (atom 1) (atom 2))) (seq (empty) (seq <regexp> <regexp>))) ->
;; (seq (seq (empty) (seq (atom 1) (atom 2))) (seq (empty) (seq (atom <atom>) <regexp>))) ->
;; (seq (seq (empty) (seq (atom 1) (atom 2))) (seq (empty) (seq (atom 3) <regexp>))) ->
;; (seq (seq (empty) (seq (atom 1) (atom 2))) (seq (empty) (seq (atom 3) (atom <atom>)))) ->
;; (seq (seq (empty) (seq (atom 1) (atom 2))) (seq (empty) (seq (atom 3) (atom 4))))

;; #### Regexp 3) syntakstræ:

;;                      <regexp>
;;                         |
;;                         |
;;                         |
;;                      (seq <regexp> <regexp>)
;;                              /          \
;;                             /            \
;;                            /              \
;;     (seq <regexp> <regexp>)                (seq <regexp> <regexp>)
;;            /          \                           /          \
;;           /            \                         /            \
;;          /              \                       /              \
;;     (empty)      (seq <regexp> <regexp>)    (empty)         (seq <regexp> <regexp>)
;;                       /           \                                /          \
;;                      /             \                              /            \
;;                 (atom <atom>)    (atom <atom>)                (atom <atom>)   (atom <atom>)
;;                         |                |                            |                |
;;                         |                |                            |                |
;;                         1                2                            3                4



;; #### Regexp 4) afledt fra venstre:
;;
;; <regexp> ->
;; (seq <regexp> <regexp>) ->
;; (seq (seq <regexp> <regexp>) <regexp>) ->
;; (seq (seq (seq <regexp> <regexp>) <regexp>) <regexp>) ->
;; (seq (seq (seq (atom <atom>) <regexp>) <regexp>) <regexp>) ->
;; (seq (seq (seq (atom 1) <regexp>) <regexp>) <regexp>) ->
;; (seq (seq (seq (atom 1) (atom <atom>)) <regexp>) <regexp>) ->
;; (seq (seq (seq (atom 1) (atom 2)) <regexp>) <regexp>) ->
;; (seq (seq (seq (atom 1) (atom 2)) (atom <atom>)) <regexp>) ->
;; (seq (seq (seq (atom 1) (atom 2)) (atom 3)) <regexp>) ->
;; (seq (seq (seq (atom 1) (atom 2)) (atom 3)) (atom <atom>)) ->
;; (seq (seq (seq (atom 1) (atom 2)) (atom 3)) (atom 4))

;; #### Regexp 4) syntakstræ:

;;                                <regexp>
;;                                   |
;;                                   |
;;                                (seq <regexp> <regexp>)
;;                                       /         \
;;                                      /           \
;;                                     /        (atom <atom>)
;;                 (seq <regexp> <regexp>)               |
;;                         /        \                    |
;;                        /          \                   4
;;                       /        (atom <atom>)
;;    (seq <regexp> <regexp>              |
;;           /           \                |
;;          /             \               3
;;      (atom <atom>)  (atom <atom>)
;;              |              |
;;              |              |
;;              1              2





;; #### Regexp 5) afledt fra venstre:
;;
;; <regexp> ->
;; (seq <regexp> <regexp>) ->
;; (seq (seq <regexp> <regexp>) <regexp>) ->
;; (seq (seq (seq <regexp> <regexp>) <regexp>) <regexp>) ->
;; (seq (seq (seq (seq <regex> <regex>) <regexp>) <regexp>) <regexp>) ->
;; (seq (seq (seq (seq (empty) <regex>) <regexp>) <regexp>) <regexp>) ->
;; (seq (seq (seq (seq (empty) (atom <atom>)) <regexp>) <regexp>) <regexp>) ->
;; (seq (seq (seq (seq (empty) (atom 1)) <regexp>) <regexp>) <regexp>) ->
;; (seq (seq (seq (seq (empty) (atom 1)) (atom <atom>)) <regexp>) <regexp>) ->
;; (seq (seq (seq (seq (empty) (atom 1)) (atom 2)) <regexp>) <regexp>) ->
;; (seq (seq (seq (seq (empty) (atom 1)) (atom 2)) (atom <atom>)) <regexp>) ->
;; (seq (seq (seq (seq (empty) (atom 1)) (atom 2)) (atom 3)) <regexp>) ->
;; (seq (seq (seq (seq (empty) (atom 1)) (atom 2)) (atom 3)) (atom <atom>)) ->
;; (seq (seq (seq (seq (empty) (atom 1)) (atom 2)) (atom 3)) (atom 4))

;; #### Regexp 5) syntakstræ:

;;                                           <regexp>
;;                                              |
;;                                              |
;;                                           (seq <regexp> <regexp>)
;;                                                  /         \
;;                                                 /           \
;;                                                /        (atom <atom>)
;;                            (seq <regexp> <regexp>)               |
;;                                    /        \                    |
;;                                   /          \                   4
;;                                  /        (atom <atom>)
;;               (seq <regexp> <regexp>              |
;;                      /           \                |
;;                     /             \               3
;; (seq <regexp> <regexp>)         (atom <atom>)
;;        /        \                         |
;;       /          \                        |
;;    (empty)     (atom <atom>)              2
;;                        |
;;                        |
;;                        1


;; ## Hvilke lister passe disse regulære udtryk til? ##

;; Alle disse udtryk passer til listen af heltal (1 2 3 4) eftersom alle regulære udtryk indeholder atom(1 til 4) som sidder i serie.

;; ============  SLUT PÅ OPGAVE 1  =============


;; ============  ## Exercise 3 ## =============
;; ##  Tegn bevistræer for træerne fra opgave 1. ##

;; #### Regexp 1) Bevistræ:

;;                                                                                                          4 is a scheme integer            
;;                                                                                                       ATOM--------------------      EMPTY----------------
;;                                                                         3 is a scheme integer           (%regexp (atom 4))              (%regexp (empty))
;;                                                                     ATOM---------------------      SEQ---------------------------------------------------
;;                                        2 is a scheme integer           (%regexp (atom 3))            (%regexp (seq (atom 4) (empty)))
;;                                     ATOM--------------------     SEQ------------------------------------------------------------------
;;       1 is a scheme integer             (%regexp (atom 2))             (%regexp (seq (atom 3) (seq (atom 4) (empty))))
;;    ATOM--------------------       SEQ----------------------------------------------------------------------------------------
;;       (%regexp (atom 1))             (%regexp (seq (atom 2) (seq (atom 3) (seq (atom 4) (empty))))) 
;; SEQ--------------------------------------------------------------------------------------------------
;;    (%regexp (seq (atom 1 (seq (atom 2) (seq (atom 3) (seq (atom 4) (empty)))))))



;; #### Regexp 2) Bevistræ:

;;                                                                         3 is a scheme integer           4 is a scheme integer
;;                                                                     ATOM---------------------      ATOM--------------------------
;;                                        2 is a scheme integer           (%regexp (atom 3))               (%regexp (atom 4))
;;                                     ATOM--------------------     SEQ------------------------------------------------------------------
;;       1 is a scheme integer             (%regexp (atom 2))             (%regexp (seq (atom 3) (atom 4)))
;;    ATOM--------------------       SEQ----------------------------------------------------------------------------------------
;;       (%regexp (atom 1))             (%regexp (seq (atom 2) (seq (atom 3) (atom 4)))) 
;; SEQ--------------------------------------------------------------------------------------------------
;;    (%regexp (seq (atom 1 (seq (atom 2) (seq (atom 3)(atom 4))))))


;; #### Regexp 3) Bevistræ:




;;                            1 is a scheme integer      2 is a scheme integer                                           3 is a scheme integer       4 is a scheme integer
;;                          ATOM-------------------   ATOM---------------------                                        ATOM------------------     ATOM-------------------
;;                             (%regexp (atom 1))         (%regexp (atom 2))                                              (%regexp (atom 3))         (%regexp (atom 4))
;; EMPTY---------------     SEQ--------------------------------------------               EMPTY-----------------      SEQ----------------------------------------------
;;    (%regexp (empty))        (%regexp (seq (atom 1) (atom 2)))                                (%regexp (empty))         (%regexp (seq (atom 3) (atom 4)))
;; SEQ----------------------------------------------------------------                SEQ-------------------------------------------------------------------------
;;    (%regexp (seq (empty) (seq (atom 1) (atom 2))))                                      (%regexp (seq (empty) (seq (atom 3) (atom 4))))
;; SEQ--------------------------------------------------------------------------------------------------------------------------------------------------------
;;    (%regexp (seq (seq (empty) (seq (atom 1) (atom 2))) (seq (empty) (seq (atom 3) (atom 4)))))




;; ####  Regexp 4) Bevistræ:


;;      1 is a scheme integer                     2 is a scheme integer
;; ATOM --------------------------            ATOM -------------------
;;     (%regexp (atom 1))                           (%regexp (atom 2))          3 is a scheme integer
;; SEQ ------------------------------------------------------------------        ATOM--------------
;;     (%regexp (seq (atom 1) (atom 2)))                                          (%regexp (atom 3))                  4 is a scheme integer
;; SEQ --------------------------------------------------------------------------------------------              ATOM-----------------------
;;     (%regexp (seq (seq (atom 1) (atom 2)) (atom 3)))                                                                (%regexp (atom 4))
;; SEQ -------------------------------------------------------------------------------------------------------------------------------------
;;     (%regexp (seq (seq (seq (atom 1) (atom 2)) (atom 3)) (atom 4)))



;; #### Regexp 5) Bevistræ:

;;                            1 is a scheme integer
;; EMPTY ---------------   ATOM -------------------
;;     (%regexp (empty))     (%regexp (atom 1))        2 is a scheme integer
;; SEQ ----------------------------------------      ATOM ----------------
;;     (%regexp (seq (empty) (atom 1))                 (%regexp (atom 2))        3 is a scheme integer
;; SEQ ------------------------------------------------------------------        ATOM--------------
;;     (%regexp (seq (seq (empty) (atom 1)) (atom 2)))                           (%regexp (atom 3))                  4 is a scheme integer
;; SEQ --------------------------------------------------------------------------------------------              ATOM-----------------------
;;     (%regexp (seq (seq (seq (empty) (atom 1)) (atom 2)) (atom 3)))                                                   (%regexp (atom 4))
;; SEQ -------------------------------------------------------------------------------------------------------------------------------------
;;     (%regexp (seq (seq (seq (seq (empty) (atom 1)) (atom 2)) (atom 3)) (atom 4)))



;; ## Træernes form ##

;; Træerne har samme form som syntakstræerne fra opgave 1, bortset fra at de er spejlvendt (eftersom syntakstræerne er omvendte træer, og bevistræerne er normale træer).

;; ============  SLUT PÅ OPGAVE 3  =============

;; ============  ## Exercise 6 ##  =============
;; Klarer notationerne "+" og "*" testen test-plus-and-times?

;; Både addition (+) og multiplikation (*) passere testen i dette tilfælde, da både 0+0 = 0, 2+2 = 4, 0*0 = 0 og 2*2 = 4 er korrekt ifølge testen. Det skal dog
;; siges at testen ikke er en god test, eftersom den kun tester specifikke tilfælde, og ikke beskriver reglerne for hvad der sker, hvis f.eks. 0*x1 hvor x1 =/= 0 samt den kommutative part
;; til dette. Dette var bare et eksempel på ét mangel, men der findes mange flere som burde være med for at kunne fange fejlene i disse hjørnetilfælde.

;; ============  SLUT PÅ OPGAVE 6  =============


;; ============  ## Exercise 7 ##  =============

(define plus
  (lambda (n1 n2)
    (if (zero? n1)
        n2
        (+ 1 (plus (- n1 1) n2)))))

(define plus_traced
  (trace-lambda plus (n1 n2)
    (if (zero? n1)
        n2
        (+ 1 (plus_traced (- n1 1) n2)))))

(define times
  (lambda (n1 n2)
    (if (zero? n1)
        0
        (plus n2 (times (- n1 1) n2)))))

(define times_traced
  (trace-lambda times (n1 n2)
    (if (zero? n1)
        0
        (plus n2 (times_traced (- n1 1) n2)))))

;; (times_traced 3 2)
;; |(times 3 2)
;; | (times 2 2)
;; | |(times 1 2)
;; | | (times 0 2)
;; | | 0
;; | |2
;; | 4
;; |6
;; 6

;; I times_traced starter den med at gange 3 med 2, hvorefter den trækker 1 fra n1 (3 i det her tilfælde),
;; og så ganger det med 2 osv. indtil n1 = 0. Når n1 = 0 stopper rekursionen og den lægger tallene
;; op til produktet sammen for at give produktet. Her bruges reglen TIMES_SUCC som forekommer lige før opgave 7.
;; Der vises dermed hele tiden det næste skridt i induktionen fra case-tallene til basis og tilbage til svaret.

(define times_traced-twice
  (trace-lambda times (n1 n2)
    (if (zero? n1)
        0
        (plus_traced n2 (times_traced-twice (- n1 1) n2)))))

;; (times_traced-twice 3 2)
;; |(times 3 2)
;; | (times 2 2)
;; | |(times 1 2)
;; | | (times 0 2)
;; | | 0
;; | |2
;; | 4
;; |(plus 2 4)
;; | (plus 1 4)
;; | |(plus 0 4)
;; | |4
;; | 5
;; |6
;; 6

;; times_traced-twice bygger ligesom times_traced at vise skridtene i et multiplikation. Forskellen mellem times_traced og times_traced-twice er, at
;; sidstnævnte burde vise additionsoperationerne for hver af multiplikationerne.
;; Efter dette kan den begynde bekræfte integriteten af funktionens trin og opnå resultatet 6 ved skridt at benytte induktion for additionsreglerne og gå
;; til basistilfældet (som er 0) ved hver multiplikation.

;; ============  SLUT PÅ OPGAVE 7  =============

;; ============  ## Exercise 31 ##  =============
;; #### Skriv en funktion for Fibonaccitallene.


;;[Dansk]
;;Basisskridt 1: Givet et naturligt tal n=0, så vil summen af tallene til og med n være lig 0.
;;Basisskridt 2: Givet et naturligt tal n=1, så vil summen af tallene op til n være lig 1.
;;Induktionskridt: For et naturligt tal n>=2, så vil delsummene af dette være delsummenes delsumme.


;;Logisk specifikation:
;;Logisk set er fib en funktion der for n beskriver summen af n-1 og n-1-1 ned til n<=2 når end følgende kendelse holder:
;;(%fib n (+ (fib n-1) (fib n-2)))
;;Kendelsen er da defineret med følgende regler:
;;
;;FIB_ONE ---------------------        FIB_ZERO------------------------
;;          (%fib 1 1)                         (%fib 0 0)
;; 
;;         (%fib k+1 r_1)                      (%fib k r_2)
;;FIB_SUCC -----------------------------------------------------------Hvor r = r_1 + r_2
;;         (%fib (k+2) r)



;; Funktionel specifkation:
;; Givet et naturligt tal n=0, så vil det resulterende tal fib(0)= 0.
;; Givet et naturligt tal n=1, så vil det resulterende tal fib(1)= 1.
;; For alle naturlige tal, fib(n) = fib(n-1) + fib(n-2)

(define fib
  (lambda (n)
    (if (equal? n 0) 
        0
        (if (equal? n 1)
            1
            (+ (fib (- n 1)) (fib (- n 2)))))))


(define test-fib
  (lambda (candidate)
    (and (equal? (candidate 0)
                 0)
         (equal? (candidate 1)
                 1)
         (equal? (candidate 2)
                 1)
         (equal? (candidate 3)
                 2)
         (equal? (candidate 4)
                 3)
         (equal? (candidate 5)
                 5)
         (equal? (candidate 6)
                 8)
         (equal? (candidate 7)
                 13)
         (equal? (candidate 8)
                 21)
         (equal? (candidate 9)
                 34)
         (equal? (candidate 10)
                 55)
         (equal? (candidate 11)
                 89)
         (equal? (candidate 12)
                 144)
         (equal? (candidate 26)
                 121393)
         )))

;; ============  SLUT PÅ OPGAVE 31  =============

;; ============  ## Exercise 36 ##  =============
;; #### Skriv en procedure for Number-of-Nodes


;;[Dansk]
;;Basis: Hvis et scheme-værdi ikke er et par, så er antallet af noder for denne værdi 0.
;;Induktionscase: For to værdier v1 og v2, så er antallet af par (hvor car = v1, cdr = v2) summen af antallet noder af værdierne v1 og v2 + 1.

;;[Logisk specifikation]
;;Logisk set, så vil værdien v indeholde n noder når følgende kendelse holder:
;;(%number-of-nodes v n)

;;Denne kendelse er defineret med følgende bevisregler:

;;                       v er ikke et par
;;NUMBER-OF-NODES-LEAF--------------------------
;;                     (%number-of-nodes v 0)

;;                       (%number-of-nodes v1 n1)         (%number of nodes v2 n2)
;;NUMBER-OF-NODES-NODE---------------------------------------------------------------- hvor n er summen af n1 og n2.
;;                               (%number-of-nodes ((cons v1 v2) n)


;;[Funktionel specifikation]
;;Basis: For alle schemeværdier v, som ikke er i par, så er number-of-nodes(v) = 0.
;;Induktionscase: For alle schemeværdier v, som sidder i par, så vil number-of-nodes(v) = (number-of-nodes (car (v)) + number-of-nodes (cdr (v)))+1.

;; Denne specifikation giver schemeproceduren number-of-nodes:


(define number-of-nodes
  (lambda (v)
    (if (pair? v)
        (+ (+ (number-of-nodes (car v))
           (number-of-nodes (cdr v))) 1)
        0)))


(define test-number-of-nodes
  (lambda (candidate)
    (and (equal? (candidate (cons (cons 10 20) 30))
                 2)
         (equal? (candidate 10)
                 0)
         (equal? (candidate candidate)
                 0)
         (equal? (candidate (cons (cons (cons 10 20) 30) 60))
                 3)
         (equal? (candidate (cons (cons (cons (cons 10 20) 30) 60) 120))
                 4))))

;; ============  SLUT PÅ OPGAVE 36  =============

;; ============  ## Exercise 37 ##  =============
;; Skriv et resumé om Christopher Stracheys artikel "What are the demands made by Computer Science on the educational systems" i et par afsnit på engelsk:


;; ## SUMMARY  ##

;; In 1963, Strachey talks about the future of computing and how it will revolutionise the way scientists work and think.
;; He discusses the ways in which the computers change the human way of thinking as well as comparing it to the view on "science" in the Middle Ages. The computers future power is basically unlimited on
;; a long enough timescale, and they will be used by human to solve complicated problems but one cannot simply ask a computer a question directly. Strachey describes the need to think a little more carefully
;; when specifying problems for a computer to process, and the fact that some problems can easily be asked and answered by a human, but which are impossible to ask a computer [in 1963]. To demonstrate this Strachey uses the
;; "travelling salesman problem". A problem insolvable by a weak computer when the amount of cities becomes high enough, but easily done by a human.
;; Strachey then describes the way humans can solve problems like this in a inaccurate, but almost correct way whereas a computer cannot.
;; A computer has to be completely precise in its processing. Christopher Strachey goes on about how computers will revolutionise all fields of science from molecular biology to radio astromony,
;; which were already then dependant on computer-results. Computer science itself is a rapidly developing science and he delights himself in the fact that he has been a pioneer to the incredible feat that is computer science.

;; Short term demands of computers according to Stracheys consists of the issue of teaching the solutions to specific computer problems as well as teaching the general population how to handle and use a computer. This
;; general knowledge must be carefully chosen as to not become obsolete within a short period of time. The complexity of computers is also a subject discussed in the article. According to Strachey, easier programming languages aren't
;; very important compared to more difficult ones. His reasoning behind this consists of the fact that all languages (programming or not) becomes easier and more rational the longer they are used, so teaching children programming
;; wouldn't be an inssue. He discusses the longevity of programming languages and that they must not become too specific to current hardware as to stump the expansion rate computer science. He encourages his fellow computer scientists
;; to not give the impression that computers only are good for mathematical and statistical work, but more that they can be used for any kind of mind-labour according to the programmers' imagination and the capabilities of the
;; hardware. It is important to encourage young people to learn about computers so that they may learn to take a wider view on the capabilities of computers and opportunities the future may bring.


;; ## END OF SUMMARY ##

;; ============  SLUT PÅ OPGAVE 37  =============
