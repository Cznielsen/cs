;; dProgSprog 2016 - DA6
;; Christian Zhuang-Qing Nielsen
;; 15. maj 2016

;; ====== EXERCISE 4 =====
;;  Skriv en procedure for compile-arithmetic-expression, hvor process bruger en accumulator i stedet.

;;;;;;;;;;

(define proper-list-of-given-length?
  (lambda (v n)
    (or (and (null? v)
             (= n 0))
        (and (pair? v)
             (> n 0)
             (proper-list-of-given-length? (cdr v)
                                           (- n 1))))))

;;;;;;;;;;

;;; constructors:

(define make-literal
  (lambda (n)
    (list 'literal n)))

(define make-plus
  (lambda (e1 e2)
    (list 'plus e1 e2)))

(define make-times
  (lambda (e1 e2)
    (list 'times e1 e2)))

;;;;;;;;;;

;;; predicates:

(define is-literal?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'literal)
         (proper-list-of-given-length? (cdr v) 1))))

(define is-plus?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'plus)
         (proper-list-of-given-length? (cdr v) 2))))

(define is-times?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'times)
         (proper-list-of-given-length? (cdr v) 2))))

;;;;;;;;;;

;;; accessors:

(define literal-1
  (lambda (v)
    (list-ref v 1)))

(define plus-1
  (lambda (v)
    (list-ref v 1)))

(define plus-2
  (lambda (v)
    (list-ref v 2)))

(define times-1
  (lambda (v)
    (list-ref v 1)))

(define times-2
  (lambda (v)
    (list-ref v 2)))

;;; constructors:

(define make-PUSH
  (lambda (n)
    (list 'PUSH n)))

(define make-ADD
  (lambda ()
    (list 'ADD)))

(define make-MUL
  (lambda ()
    (list 'MUL)))

;;;;;;;;;;

;;; predicates:

(define is-PUSH?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'PUSH)
         (proper-list-of-given-length? (cdr v) 1))))

(define is-ADD?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'ADD)
         (proper-list-of-given-length? (cdr v) 0))))

(define is-MUL?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'MUL)
         (proper-list-of-given-length? (cdr v) 0))))

;;;;;;;;;;

;;; accessors:

(define PUSH-1
  (lambda (v)
    (list-ref v 1)))

;;;;;;;;;;

(define make-byte-code-program
  (lambda (is)
    (list 'byte-code-program is)))

(define is-byte-code-program?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'byte-code-program)
         (proper-list-of-given-length? (cdr v) 1))))

(define byte-code-program-1
  (lambda (v)
    (list-ref v 1)))


;; EGENTLIGE OPGAVE

(define compile-arithmetic-expression
  (lambda (e_init)
    (letrec ([process (lambda (e)
                         (cond
                           [(is-literal? e)
                            (list (make-PUSH (literal-1 e)))]
                           [(is-plus? e)
                            (append (process (plus-1 e))
                                    (process (plus-2 e))
                                    (list (make-ADD)))]
                           [(is-times? e)
                            (append (process (times-1 e))
                                    (process (times-2 e))
                                    (list (make-MUL)))]
                           [else
                            (errorf 'compile-arithmetic-expression
                                    "unrecognized expression: ~s"
                                    e)]))])
      (make-byte-code-program (process e_init)))))

(define compile-arithmetic-expression-accumulated
  (lambda (e_init)
    (letrec ([process (lambda (e a)
                        (cond
                          [(number? e)
                           a]
                          
                           [(is-literal? e)
                            (process (literal-1 e)
                                     (cons (make-PUSH (literal-1 e)) a))]
                           
                           [(is-plus? e)
                            (process (plus-1 e)
                                     (process (plus-2 e)
                                              (cons (make-ADD) a)))]
                           
                           [(is-times? e)
                            (process (times-1 e)
                                     (process (times-2 e)
                                              (cons (make-MUL) a)))]
                                                            
                           [else
                            (errorf 'compile-arithmetic-expression
                                    "unrecognized expression: ~s"
                                    e)]))])
      (make-byte-code-program (process e_init '() )))))


;;TIDSKRAVET

;;Ved at bruge (time) proceduren til at teste kan jeg konkludere at de tager lige lang tid at udføre.

;; > (time compile-arithmetic-expression)
;; (time compile-arithmetic-expression)
;;     no collections
;;     0 ms elapsed cpu time
;;     0 ms elapsed real time
;;     0 bytes allocated
;; #<procedure>
;; > (time compile-arithmetic-expression-accumulated)
;; (time compile-arithmetic-expression-accumulated)
;;     no collections
;;     0 ms elapsed cpu time
;;     0 ms elapsed real time
;;     0 bytes allocated
;; #<procedure>


;; ===== EXERCISE 9 =====
;; a) Definér nye konstruktører, prædikater og acessors:
;; konstruktører
(define make-minus
  (lambda (e1 e2)
    (list 'minus e1 e2)))
(define make-quotient
  (lambda (e1 e2)
    (list 'quotient e1 e2)))
(define make-remainder
  (lambda (e1 e2)
    (list 'remainder e1 e2)))

(define make-SUB
  (lambda ()
    (list 'SUB)))
(define make-QUO
  (lambda ()
    (list 'QUO)))
(define make-REM
  (lambda ()
    (list 'REM)))

;; Prædikater
(define is-minus?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'minus)
         (proper-list-of-given-length? (cdr v) 2))))
(define is-quotient?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'quotient)
         (proper-list-of-given-length? (cdr v) 2))))
(define is-remainder?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'remainder)
         (proper-list-of-given-length? (cdr v) 2))))

(define is-SUB?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'SUB)
         (proper-list-of-given-length? (cdr v) 0))))
(define is-QUO?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'QUO)
         (proper-list-of-given-length? (cdr v) 0))))
(define is-REM?
  (lambda (v)
    (and (pair? v)
         (equal? (car v) 'REM)
         (proper-list-of-given-length? (cdr v) 0))))

;;Accessors
(define minus-1
  (lambda (v)
    (list-ref v 1)))
(define minus-2
  (lambda (v)
    (list-ref v 2)))
(define quotient-1
  (lambda (v)
    (list-ref v 1)))
(define quotient-2
  (lambda (v)
    (list-ref v 2)))
(define remainder-1
  (lambda (v)
    (list-ref v 1)))
(define remainder-2
  (lambda (v)
    (list-ref v 2)))

;; Positive unit test source

(define pus0
  (make-minus (make-literal 10)
              (make-literal 5)))
(define pus1
  (make-minus pus0
              (make-minus (make-literal 500)
                          (make-literal 257))))
(define pus2
  (make-quotient (make-literal 40)
                 (make-literal 20)))
(define pus3
  (make-quotient (make-literal 22)
                 (make-literal 7)))
(define pus4
  (make-remainder (make-literal 6)
                  (make-literal 43)))
(define pus5
  (make-remainder (make-literal 22)
                  (make-literal 10)))

(define test-positive-source
  (lambda (candidate)
    (and (candidate pus0)
         (candidate pus1)
         (candidate pus2)
         (candidate pus3)
         (candidate pus4)
         (candidate pus5)
         )))

;; Negative unit test source
(define nus1
  '(minus (30) (10)))
(define nus2
  '(quotient (literal 10) 0))
(define nus3
  '(quotient (literal 10)))
(define nus4
  '(quotient (literal 10) (literal 20) (literal 30)))
(define nus5
  '(remainder (literal 10) 0))
(define nus6
  '(remainder (String huehue) (Literal kek)))

(define test-negative-source
  (lambda (candidate)
    (not (or (candidate nus1)
             (candidate nus2)
             (candidate nus3)
             (candidate nus4)
             (candidate nus5)
             (candidate nus6)
             ))))

(define check-arithmetic-expression
  (lambda (e)
    (cond
      [(is-literal? e)
       (integer? (literal-1 e))]
      [(is-plus? e)
       (and (check-arithmetic-expression (plus-1 e))
            (check-arithmetic-expression (plus-2 e)))]
      [(is-times? e)
       (and (check-arithmetic-expression (times-1 e))
            (check-arithmetic-expression (times-2 e)))]
      [(is-minus? e) ;;tilføjet minus
       (and (check-arithmetic-expression (minus-1 e))
            (check-arithmetic-expression (minus-2 e)))]
      [(is-quotient? e) ;;tilføjet kvotient
       (and (check-arithmetic-expression (quotient-1 e))
            (check-arithmetic-expression (quotient-2 e)))]
      [(is-remainder? e) ;; tilføjet rest
       (and (check-arithmetic-expression (remainder-1 e))
            (check-arithmetic-expression (remainder-2 e)))]
      [else
       #f])))

;; Og de tester begge #t:

;; > (test-positive-source check-arithmetic-expression)
;; #t
;; > (test-negative-source check-arithmetic-expression)
;; #t


;; Positive unit test target
             
(define put0
  (make-byte-code-program '((PUSH 50) (PUSH 30) (SUB))))
(define put1
  (make-byte-code-program '((PUSH 22) (PUSH 11) (SUB))))
(define put2
  (make-byte-code-program '((PUSH 5) (PUSH 25) (QUO))))
(define put3
  (make-byte-code-program '((PUSH 10) (PUSH 20) (QUO))))
(define put4
  (make-byte-code-program '((PUSH 4) (PUSH 6) (REM))))
(define put5
  (make-byte-code-program '((PUSH 11) (PUSH 3) (REM))))


(define test-positive-target
  (lambda (candidate)
    (and (candidate put0)
         (candidate put1)
         (candidate put2)
         (candidate put3)
         (candidate put4)
         (candidate put5)
         )))

;; Negative unit test target
(define nut0
  (make-byte-code-program '((PUSH k) (PUSH ho) (SUB))))
(define nut1
  (make-byte-code-program '(((PUSH 13) . lel) (SUB))))
(define nut2
  (make-byte-code-program '((PUSH 20) (PUSH '0) (QUO))))
(define nut3
  (make-byte-code-program '((PUSH hej) (HEJ) (QUO))))
(define nut4
  (make-byte-code-program '(((PUSH 10) . pls_no) (QUO))))
(define nut5
  (make-byte-code-program '((PUSH asdfgh) (Push 40) (REM))))
(define nut6
  (make-byte-code-program '(((REM 20 30)))))

(define test-negative-target
  (lambda (candidate)
    (not (or (candidate nut0)
             (candidate nut1)
             (candidate nut2)
             (candidate nut3)
             (candidate nut4)
             (candidate nut5)
             (candidate nut6)
             ))))
;;Syntakstjekker for byte-code

;;Hjælpefunktion
(define check-byte-code-instruction
  (lambda (v)
    (cond
      [(is-PUSH? v)
       (integer? (PUSH-1 v))]
      [(is-ADD? v)
       #t]
      [(is-MUL? v)
       #t]
      [(is-SUB? v) ;;tilføjet SUB
       #t]
      [(is-QUO? v) ;;tilføjet QUO
       #t]
      [(is-REM? v) ;;tilføjet REM
       #t]
      [else
       #f])))

;;Selve tjekkeren
(define check-byte-code-program
  (lambda (v)
    (if (is-byte-code-program? v)
        (letrec ([loop (lambda (v)
                         (cond
                           [(null? v)
                            #t]
                           [(pair? v)
                            (and (check-byte-code-instruction (car v))
                                 (loop (cdr v)))]
                           [else
                            #f]))])
          (loop (byte-code-program-1 v)))
        #f)))

;;Og begge unit tests tester igen #t;

;; > (test-positive-target check-byte-code-program)
;; #t
;; > (test-negative-target check-byte-code-program)
;; #t

(define interpret-arithmetic-expression
  (lambda (e_init)
    (letrec ([process (lambda (e)
                        (cond
                          [(is-literal? e)
                           (literal-1 e)]
                          [(is-plus? e)
                           (+ (process (plus-1 e))
                              (process (plus-2 e)))]
                         [(is-times? e)
                          (* (process (times-1 e))
                             (process (times-2 e)))]
                         [(is-minus? e) ;;tilføjet minus
                          (- (process (minus-1 e))
                             (process (minus-2 e)))]
                         [(is-quotient? e) ;;tilføjet kvotient
                          (quotient (process (quotient-1 e))
                             (process (quotient-2 e)))]
                         [(is-remainder? e) ;;tilføjet rest/modulo
                          (modulo (process (remainder-1 e))
                                  (process (remainder-2 e)))]
                         [else
                              (errorf 'interpret-arithmetic-expression
                                      "unrecognized expression: ~s" e)
                            ]))])
      (process e_init))))


;; positive unit test kommed med et svar:

;; > (test-positive-source interpret-arithmetic-expression)
;; 2




;;Ved negative unit test returnerer den selvfølgelig exceptions (eftersom de er ill-formed)

;; > (nus1 interpret-arithmetic-expression)
;; Exception: attempt to apply non-procedure (minus (30) (10))
;; > (nus2 interpret-arithmetic-expression)
;; Exception: attempt to apply non-procedure (quotient (literal 10) 0)
;; > (interpretret-arithmetic-expression nus1)
;; Exception: variable interpretret-arithmetic-expression is not bound
;; > (interpret-arithmetic-expression nus1)
;; Exception in interpret-arithmetic-expression: unrecognized expression: (10)
;; > (interpret-arithmetic-expression nus2)
;; Exception in interpret-arithmetic-expression: unrecognized expression: 0
;; > (interpret-arithmetic-expression nus3)
;; Exception in interpret-arithmetic-expression: unrecognized expression: (quotient (literal 10))
;; > (interpret-arithmetic-expression nus4)
;; Exception in interpret-arithmetic-expression: unrecognized expression: (quotient (literal 10) (literal 20) (literal 30))
;; > (interpret-arithmetic-expression nus5)
;; Exception in interpret-arithmetic-expression: unrecognized expression: 0
;; > (interpret-arithmetic-expression nus6)
;; Exception in interpret-arithmetic-expression: unrecognized expression: (Literal kek)



(define compile-arithmetic-expression-new
  (lambda (e_init)
    (letrec ([process (lambda (e)
                         (cond
                           [(is-literal? e)
                            (list (make-PUSH (literal-1 e)))]
                           [(is-plus? e)
                            (append (process (plus-1 e))
                                    (process (plus-2 e))
                                    (list (make-ADD)))]
                           [(is-times? e)
                            (append (process (times-1 e))
                                    (process (times-2 e))
                                    (list (make-MUL)))]
                           [(is-minus? e) ;;Tilføjet minus
                            (append (process (minus-1 e))
                                    (process (minus-2 e))
                                    (list (make-SUB)))]
                           [(is-quotient? e) ;;tilføjet kvotient
                            (append (process (quotient-1 e))
                                    (process (quotient-2 e))
                                    (list (make-QUO)))]
                           [(is-remainder? e) ;; tilføjet rest
                            (append (process (remainder-1 e))
                                    (process (remainder-2 e))
                                    (list (make-REM)))]
                           [else
                            (errorf 'compile-arithmetic-expression
                                    "unrecognized expression: ~s"
                                    e)]))])
      (make-byte-code-program (process e_init)))))

(define test-compile-arithmetic-expression-and-check-byte-code-program
  (lambda (compile check)
    (and (check (compile pus0))
         (check (compile pus1))
         (check (compile pus2))
         (check (compile pus3))
         (check (compile pus4))
         (check (compile pus5))
         )))

;; > (test-compile-arithmetic-expression-and-check-byte-code-program compile-arithmetic-expression-new
;;    check-byte-code-program)
;; #t


(define at-least-two?
  (lambda (vs)
    (and (pair? vs)
         (pair? (cdr vs)))))

(define run-byte-code-program
  (lambda (p)
    (if (is-byte-code-program? p)
        (letrec ([loop (lambda (is vs)
                         (cond
                           [(null? is)
                            vs]
                           [(pair? is)
                            (let ([i (car is)]
                                  [is (cdr is)])
                              (cond
                                [(is-PUSH? i)
                                 (loop is
                                       (cons (PUSH-1 i) vs))]
                                [(is-ADD? i)
                                 (if (at-least-two? vs)
                                     (let* ([operand_1 (car vs)]
                                            [vs (cdr vs)]
                                            [operand_2 (car vs)]
                                            [vs (cdr vs)])
                                       (loop is
                                             (cons (+ operand_1 operand_2)
                                                   vs)))
                                     (errorf 'run-byte-code-program
                                             "stack underflow: ~s"
                                             vs))]
                                [(is-MUL? i)
                                 (if (at-least-two? vs)
                                     (let* ([operand_1 (car vs)]
                                            [vs (cdr vs)]
                                            [operand_2 (car vs)]
                                            [vs (cdr vs)])
                                       (loop is
                                             (cons (* operand_1 operand_2)
                                                   vs)))
                                     (errorf 'run-byte-code-program
                                             "stack underflow: ~s"
                                             vs))]
                                [(is-SUB? i)
                                 (if (at-least-two? vs)
                                     (let* ([operand_1 (car vs)]
                                            [vs (cdr vs)]
                                            [operand_2 (car vs)]
                                            [vs (cdr vs)])
                                       (loop is
                                             (cons (- operand_1 operand_2)
                                                   vs)))
                                     (errorf 'run-byte-code-program
                                             "stack underflow: ~s"
                                             vs))]
                                [(is-QUO? i)
                                 (if (at-least-two? vs)
                                     (let* ([operand_1 (car vs)]
                                            [vs (cdr vs)]
                                            [operand_2 (car vs)]
                                            [vs (cdr vs)])
                                       (loop is
                                             (cons (quotient operand_1 operand_2)
                                                   vs)))
                                     (errorf 'run-byte-code-program
                                             "stack underflow: ~s"
                                             vs))]
                                [(is-REM? i)
                                 (if (at-least-two? vs)
                                     (let* ([operand_1 (car vs)]
                                            [vs (cdr vs)]
                                            [operand_2 (car vs)]
                                            [vs (cdr vs)])
                                       (loop is
                                             (cons (remainder operand_1 operand_2)
                                                   vs)))
                                     (errorf 'run-byte-code-program
                                             "stack underflow: ~s"
                                             vs))]
                                [else
                                 (errorf 'run-byte-code-program
                                         "unrecognized byte code: ~s"
                                         i)]))]
                           [else
                            (errorf 'run-byte-code-program
                                    "ill-formed list of byte-code instructions: ~s"
                                    is)]))])
          (let ([vs (loop (byte-code-program-1 p) '())])
            (if (proper-list-of-given-length? vs 1)
                (car vs)
                (errorf 'run-byte-code-program
                        "unexpected resulting stack: ~s"
                        vs))))
        (errorf 'run-byte-code-program
                "not a byte-code program: ~s"
                p))))

(define test-run-byte-code-programs
  (lambda (candidate)
    (and (equal? (candidate put0)
                 -20)
         (equal? (candidate put1)
                 -11)
         (equal? (candidate put2)
                 5)
         (equal? (candidate put3)
                 2)
         (equal? (candidate put4)
                 2)
         (equal? (candidate put5)
                 3)
         )))

(unless (test-run-byte-code-programs run-byte-code-program)
  (printf "Der findes en fejl i (test-run-byte-code-programs run-byte-code-programs)~n"))

;; Eftersom der ikke kommer en fejl når dette køres, så vil det sige at buggen er fjernet.


;; ===== EXERCISE 17 =====
(define and-all
  (lambda bs_init
    (letrec ([visit (lambda (bs)
                      (or (null? bs)
                          (and (car bs)
                               (visit (cdr bs)))))])
      (visit bs_init))))

;; Lavet om. Burde være korrekt nu.
(define and-all-expanded
  (lambda bs
    (andmap1 (lambda (n)
               n)
             bs)))



(define andmap1
  (lambda (p vs)
    (letrec ([visit (lambda (ws)
                      (if (null? ws)
                          #t
                          (and (p (car ws))
                               (visit (cdr ws)))))])
      (visit vs))))

(define test-and-all
  (lambda (candidate)
    (and (equal? (candidate 0 0 0 0 0)
                 #t)
          (equal? (candidate 30 50 40 20 10)
                  #t)
          (equal? (candidate 'yes 'yes)
                  #t)
           (equal? (candidate #t #f 2 3 4 5 6 7 8 9 10)
                   #f)
          )))


                           






;; ===== EXERCISE 25 =====
;; Skriv en curry og en uncurry som tager 3 argumenter hver

(define curry3
  (lambda (p)
    (lambda (x1)
      (lambda (x2)
        (lambda (x3)
          (p x1 x2 x3))))))


(define uncurry3
  (lambda (p)
    (lambda (x1 x2 x3)
      (((p x1) x2) x3))))

;; ===== EXERCISE 29 =====
;; Svar på følgende spørgsmål om hvilke følgende funktioner implementeres ved:

;; ### a) (fold-right_nat 0 1+) ###
;; fold-right-nat med argumenterne 0 og 1+ viser rekursionen +1 hos naturlige
;; tal fra 0 til og med det medgivne argument.
;; Den er tracet med argumentet 5 her:
;;
;; > ((fold-right_nat-traced 0 1+)5)
;; |(visit_fold-right_nat 5)
;; | (visit_fold-right_nat 4)
;; | |(visit_fold-right_nat 3)
;; | | (visit_fold-right_nat 2)
;; | | |(visit_fold-right_nat 1)
;; | | | (visit_fold-right_nat 0)
;; | | | 0
;; | | |1
;; | | 2
;; | |3
;; | 4
;; |5
;; 5

;;### b) (fold-left_nat 0 1+)? ###
;; fold-left-nat med argumenterne 0 og 1+ viser hvordan den tæller argumentet 5 ned og lægger dette sammen
;; med rekursionen af naturlige tal fra 0 til 5.

;; > ((fold-left_nat-traced 0 1+)5)
;; |(visit_fold-left_nat 5 0)
;; |(visit_fold-left_nat 4 1)
;; |(visit_fold-left_nat 3 2)
;; |(visit_fold-left_nat 2 3)
;; |(visit_fold-left_nat 1 4)
;; |(visit_fold-left_nat 0 5)
;; |5
;; 5


;; ### c) (lambda (n) ((fold-right_nat n 1+) n)) ###
;; Denne funktion fordobler n vha. n+n. F.eks:
;;
;; > ((lambda (n) ((fold-right_nat n 1+) n)) 5)
;; 10
;; > ((lambda (n) ((fold-right_nat n 1+) n)) 10)
;; 20
;; > ((lambda (n) ((fold-right_nat n 1+) n)) 55)
;; 110


;; ### d) (lambda (n) ((fold-left_nat n 1+) n)) ###
;; Ligesom den foregående, så fordobler denne også n, men benytter sig af en lidt anderledes metode som
;; fremgår af fold-left_nat. Eksempler på fordoblingen:
;;
;; > ((lambda (n) ((fold-left_nat n 1+) n)) 5)
;; 10
;; > ((lambda (n) ((fold-left_nat n 1+) n)) 10)
;; 20
;; > ((lambda (n) ((fold-left_nat n 1+) n)) 1000)
;; 2000


;; ### e) (fold-right_proper-list '() cons) ###
;;Kombinerer en velformet liste og returnerer dem. F.eks:
;;
;; > ((fold-right_proper-list '() cons)(cons 10 (cons 30 (list 40 50))))
;; (10 30 40 50)


;; ### f) (fold-left_proper-list '() cons) ###
;; Kombinerer en velformet liste og vender rækkefølgen før den returnerer den. F.eks:
;;
;; > ((fold-left_proper-list '() cons)(cons 10 (cons 30 (list 40 50))))
;; (50 40 30 10)


;; ### g) (lambda (xs) ((fold-right_proper_list xs cons) xs)) ###
;; Igen fletter denne par med lister, lister med lister eller par med par.
;; Eksempler:
;;
;; > ((lambda (xs) (fold-right_proper-list xs cons) xs)(cons 10 (cons 30 40)))
;; (10 30 . 40)
;; > ((lambda (xs) (fold-right_proper-list xs cons) xs)(cons 10 (list 40 60 20)))
;; (10 40 60 20)
;; > ((lambda (xs) (fold-right_proper-list xs cons) xs)(cons 10 20))
;; (10 . 20)

;; ### h) (lambda (xs) ((fold-left_proper-list xs cons) xs)) ###
;; Denne tager en liste som input og kopierer denne liste samt fletter en kopi der har omvendt rækkefølge.
;; Dette kan ses i eksemplerne nedenfor:
;;
;; > ((lambda (xs) ((fold-left_proper-list xs cons) xs))(list 30 20 10 10 20 30))
;; (30 20 10 10 20 30 30 20 10 10 20 30)
;; > ((lambda (xs) ((fold-left_proper-list xs cons) xs))(list 10 20 30 40 50 60))
;; (60 50 40 30 20 10 10 20 30 40 50 60)
;; > ((lambda (xs) ((fold-left_proper-list xs cons) xs))(list 10))
;; (10 10)


;; ===== EXERCISE 46 =====
;; Karakterisér hvad de to mysterie-procedurer gør. Giv dem navne på 3 bogstaver.

(define mystery-1
  (lambda (v)
    (apply (lambda (x . xs)
             x)
           v)))

;;mystery-1 returnerer car af en liste som ikke er tom:
;;Eksempler:
;;
;; > (mystery-1 '(10 20 30 40))
;; 10
;; > (mystery-1 '(5 10 20 30 40))
;; 5
;; > (mystery-1 '(5 10 20 30 40 2))
;; 5

;; Dennes navn på tre bogstaver ville da være "car".


(define mystery-2
  (lambda (v)
    (apply (lambda (x . xs)
             xs)
           v)))
;;mystery-2 returnerer cdr af en liste som ikke er tom:
;;Eksempler:
;;
;; > (mystery-2 '(5 10 20 30 40 2))
;; (10 20 30 40 2)
;; > (mystery-2 '(2))
;; ()
;; > (mystery-2 (list 20 40 10 30))
;; (40 10 30)
;; >

;; Dennes navn på tre bogstaver ville da være "cdr".



;; ===== EXERCISE 48 =====
;;;;;;;;;; Procedurer

(define silent-try
  #f)

(define try-candidate-variadically
  (lambda (name candidate expected-output . input)
    (or (equal? (apply candidate input)
                expected-output)
        (begin
          (unless silent-try
            (printf "~s: error for ~s. " name input)
            (printf "Expected output was ~s~n" expected-output))
          #f))))

;;;;;;;;;;

(define test-try-candidate-variadically
  (lambda (candidate)
    (and-all (candidate '+ + 3 1 2)
             (candidate '+ + 6 1 2 3)
             (candidate '* * 1)
             (candidate '* * 2 2)
             (candidate '* * 6 2 3)
             (candidate '* * 6 1 2 3)
             (candidate '* * 120 1 2 3 4 5)
             ;;;
             )))

;;;;;;;;;;

(define negative-test-try-candidate-variadically
  (lambda (candidate)
    (and-all (candidate '+ + 0 1 2)
             (candidate '+ + 0 1 2 3)
             (candidate '* * 0)
             (candidate '* * 0 2)
             (candidate '* * 0 2 3)
             (candidate '* * 0 1 2 3)
             (candidate '* * 0 1 2 3 4 5)
             ;;;
             )))

;;;;;;;;;;


;; ======== EXERCISE 64 =========
;; ######### a) RESUME   #########

;; Problem Solvers and Theorizers by Gian-Carlo Rota is an article regarding the discussion about theory versus practice. Rota argues the existance of
;; two different kind of mathematicians: Problem solvers and theorisers. Problem solvers search for solutions to unbeaten problems, and
;; when they find a solution, however inefficient it might be, they consider the job done and the interest in that specific subject is lost.
;; Theorisers on the other hand strives after improving current methods and theories - further perfecting them as well as rendering old formulas
;; obsolete. Real-life problems should be solved by a problem solver, but the education of people of lesser mathematical skill should be supervised
;; by theorists, as they are the ones who improve on the more general fields as opposed to specific problems.


;; ######### b) ANALYSE  #########

;; Rotas argument for, at der er stor forskel på problemløsere og teoretikere er solidt. Forskellen er muligvis ikke ligetil inden for
;; matematikken, men det står fast. Ligeledes gælder denne holdning også alle andre videnskabe som fysik, biologi, kemi og ikke mindst
;; datalogi. Datalogi indeholder mange specialiserede områder, og det er klart, at der både findes problemløsere som supplerer brugbare
;; IT-løsninger til firmaer såvel som private brugere. Disse løsninger er ligesom matematikken i Rotas eksempel ikke nødvendigvis altid
;; baseret på den mest effektive teori bag hvorledes computere fungerer, men det betyder ikke at de to ikke bærer præg af hinanden. F.eks.
;; Har kryptologiteoretikere udarbejdet effektive metoder som er blevet implementeret af problemløsere til netbank osv.
