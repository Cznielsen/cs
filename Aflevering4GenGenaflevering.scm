;; dProgSprog Aflevering 4 - DA6
;; Christian Zhuang-Qing Nielsen
;; 201504624 - 26.  maj 2016
;; 4. Genafleveringsforsøg






;; Efter lang tids hårdt slid indså jeg at jeg aldrig ville kunne få den som var lavet efter Oliviers form
;; til at fungere korrekt, så jeg vendte tilbage til mine egen struktur med den lokale rekursivitet (som
;; jeg heldigvis havde rettet lidt i og gemt). Så var det ellers bare med at teste hver for sig og lidt
;; trace-magi, samt dernæst at rette dem som ikke virkede. Den kan nu OMSIDER TJEKKE SIG SELV!

;; > (check-file "Aflevering4GenGenaflevering.scm")
;; #t
;; > (check-file "Aflevering4GenGenaflevering.scm")
;; #t
;; > (check-file "Aflevering4GenGenaflevering.scm")
;; #t
;; > (check-file "Aflevering4GenGenaflevering.scm")
;; #t
;; > (check-file "Aflevering4GenGenaflevering.scm")
;; #t
;; > (check-file "Aflevering4GenGenaflevering.scm")
;; #t

;; !!!!!



(define check-silently
  #t)

;;;;;;;;;;

(define check-program
  (lambda (v)
    (cond
      [(null? v)
       #t]
      [(pair? v)
       (and (check-toplevel-form (car v))
            (check-program (cdr v)))]
      [else
       (begin
         (unless check-silently
           (printf "check-program -- unrecognized input: ~s~n" v))
         #f)])))

;;;;;;;;;;

(define check-toplevel-form
  (lambda (v)
    (cond
      [(is-definition? v)
       (check-definition (define-1 v) (define-2 v))]
      [else
       (check-expression v)])))

;;;;;;;;;;

;;;;;;;;;;
;;; basic predicates and accessors for definitions:
;;;;;;;;;;

;;; predicate:
(define is-definition?
  (lambda (v)
    (and (proper-list-of-given-length? v 3)
         (equal? (car v) 'define))))

;;; 1st accessor:
(define define-1
  (lambda (v)
    (list-ref v 1)))

;;; 2nd accessor:
(define define-2
  (lambda (v)
    (list-ref v 2)))

;;;;;;;;;;
;;; the syntax checker proper for definitions:
;;;;;;;;;;

(define check-definition
  (lambda (name definiens)
    (and (check-variable name)
         (check-expression definiens))))

;;;;;;;;;;

;;;;;;;;;;
;;; basic predicates and accessors for expressions:
;;;;;;;;;;

;;;;; NUMBER
;;; predicate:
(define is-number?
  (lambda (v)
    (number? v)))
;;accessor
(define number-1
  (lambda (v)
    (list-ref v 1)))


;;;;; BOOLEAN
;;; predicate:
(define is-boolean?
  (lambda (v)
    (boolean? v)))
;;accessor
(define boolean-1
  (lambda (v)
    (list-ref v 1)))


;;;;; CHARACTER
;;; predicate:
(define is-character?
  (lambda (v)
    (char? v)))
;;; accessor
(define character-1
  (lambda (v)
    (list-ref v 1)))


;;;;; STRING
;;; predicate:
(define is-string?
  (lambda (v)
    (string? v)))

;;; accessor
(define string-1
  (lambda (v)
    (list-ref v 1)))


;;;;; VARIABLE
;;; predicate:
(define is-variable?
  (lambda (v)
    (and (symbol? v)
         (not (keyword? v)))))

;; accessor:
(define variable-1
  (lambda (v)
    (list-ref v 1)))


;;;;;TIME
;;; predicate:
(define is-time?
  (lambda (v)
    (and (proper-list-of-given-length? v 2)
         (equal? (car v) 'time))))
;;; 1st accessor:
(define time-1
  (lambda (v)
    (list-ref v 1)))


;;;;; IF
;;; predicate:
(define is-if?
  (lambda (v)
    (and (proper-list-of-given-length? v 4)
         (equal? (car v) 'if))))
;;; 1st accessor:
(define if-1
  (lambda (v)
    (list-ref v 1)))
;;; 2nd accessor:
(define if-2
  (lambda (v)
    (list-ref v 2)))
;;; 3rd accessor:
(define if-3
  (lambda (v)
    (list-ref v 3)))


;;;;;AND
;;; predicate
(define is-and?
  (lambda (v)
    (and (list-strictly-longer-than? v 0)
         (equal? (car v) 'and))))



;;;; OR
;;; predicate
(define is-or?
  (lambda (v)
    (and (list-strictly-longer-than? v 0)
         (equal? (car v) 'or))))



;;;; COND
;;; predicate
(define is-cond?
  (lambda (v)
    (and (list-strictly-longer-than? v 1)
         (equal? (car v) 'cond))))


;;;; CASE
;;; predicate
(define is-case?
  (lambda (v)
    (and (list-strictly-longer-than? v 2)
         (equal? (car v) 'case))))
;;; accessors
(define case-1
  (lambda (v)
    (list-ref v 1)))
(define case-2
  (lambda (v)
    (list-ref v 2)))



;;;; LET
;; Predicate
(define is-let?
  (lambda (v)
    (and (proper-list-of-given-length? v 3)
         (list? (list-ref v 1))
         (equal? (car v) 'let))))



;;;; LET-STAR
;; predicate
(define is-letstar?
  (lambda (v)
    (and (proper-list-of-given-length? v 3)
         (equal? (car v) 'let*))))



;;;; LETREC
;; predicate
(define is-letrec?
  (lambda (v)
    (and (proper-list-of-given-length? v 3)
         (equal? (car v) 'letrec)
         (list? (list-ref v 1)))))



;;;; BEGIN
;; predicate
(define is-begin?
  (lambda (v)
    (and (list-strictly-longer-than? v 1)
         (equal? (car v) 'begin))))



        
;;;; UNLESS
;;; predicate:
(define is-unless?
  (lambda (v)
    (and (proper-list-of-given-length? v 3)
         (equal? (car v) 'unless))))
;;; 1st accessor:
(define unless-1
  (lambda (v)
    (list-ref v 1)))

;;; 2nd accessor:
(define unless-2
  (lambda (v)
    (list-ref v 2)))



;;;;; QUOTE
;;; predicate:
(define is-quote?
  (lambda (v)
    (and (proper-list-of-given-length? v 2)
         (equal? (car v) 'quote))))
;;; 1st accessor:
(define quote-1
  (lambda (v)
    (list-ref v 1)))

;;;;LAMBDA-ABSTRACTION
;;;predicate
(define is-lambda-abstraction?
  (lambda (v)
    (if (list? v)
        (cond
          [(equal? (car v) 'lambda)
           (proper-list-of-given-length? v 3)]
          [(equal? (car v) 'trace-lambda)
           (proper-list-of-given-length? v 4)]
          [else
           #f])
        #f))) ;;hvis v ikke er liste

;;acessors
(define lambda-1
  (lambda (v)
    (list-ref v 1)))
(define lambda-2
  (lambda (v)
    (list-ref v 2)))

;;kun trace
(define lambda-3
  (lambda (v)
    (list-ref v 3)))
                 

;;;;; APPLICATION
;;; predicate:
(define is-application?
  (lambda (v)
    (and (list-strictly-longer-than? v 0)
         (check-expression (car v)))))

;;;;;;;;;;
;;; the syntax checker proper for expressions:
;;;;;;;;;;

(define check-expression
  (lambda (v)
    (cond
      [(is-number? v)
       (check-number v)]
      [(is-boolean? v)
       (check-boolean v)]
      [(is-character? v)
       (check-character v)]
      [(is-string? v)
       (check-string v)]
      [(is-variable? v)
       (check-variable v)]
      [(is-time? v)
       (check-time-expression v)]
      [(is-if? v)
       (check-if-expression v)]
      [(is-and? v)
       (check-and-expression v)]
      [(is-or? v)
       (check-or-expression v)]
      [(is-cond? v)
       (check-cond-expression v)]
      [(is-case? v)
       (check-case-expression v)]
      [(is-let? v)
       (check-let-expression v)]
      [(is-letstar? v)
       (check-letstar-expression v)]
      [(is-letrec? v)
       (check-letrec-expression v)]
      [(is-begin? v)
       (check-begin-expression v)]
      [(is-unless? v)
       (check-unless-expression (unless-1 v) (unless-2 v))] ;;Den eneste som får lov til at forblive som den er
      [(is-quote? v)
       (check-quote-expression v)]
      [(is-lambda-abstraction? v)
       (check-lambda-abstraction v)]
      [(is-application? v)
       (check-application v)]
      [else
       (begin
         (unless check-silently
           (printf "check-expression -- unrecognized input: ~s~n" v))
         #f)])))

(define check-number
  (lambda (x)
    #t))

(define check-boolean
  (lambda (x)
    #t))

(define check-character
  (lambda (x)
    (char? x)))

(define check-string
  (lambda (x)
    (string? x)))

(define check-variable
  (lambda (x)
         #t))

(define check-time-expression
  (lambda (x)
    (check-expression (time-1 x))))

(define check-if-expression
  (lambda (x)
    (and (check-expression (if-1 x))
         (check-expression (if-2 x))
         (check-expression (if-3 x)))))

;;Selvlavede tjeks
;; AND
(define check-and-expression
  (lambda (x)
    (letrec ([visit (lambda (x)
                      (if (not (null? x))
                          (if (check-expression (car x))
                              (visit (cdr x))
                              #f) #t))])
      (visit (cdr x))))) 

;; OR
(define check-or-expression
  (lambda (x)
    (letrec ([visit (lambda (x)
                      (if (not (null? x))
                          (if (check-expression (car x))
                              (visit (cdr x))
                              #f) #t))])
      (visit (cdr x)))))

;;COND
(define check-cond-expression
  (lambda (x)
    (letrec ([visit (lambda (x)
                      (if (not (proper-list-of-given-length? x 1))
                          (if (check-cond-clause (car x))
                              (visit (cdr x)) #f)
                          (and (proper-list-of-given-length? (car x) 2)
                               (equal? (list-ref (car x) 0) 'else)
                               (check-expression (list-ref (car x) 1)))))])
      (visit (cdr x)))))

(define check-cond-clause
  (lambda (x)
    (or (and (proper-list-of-given-length? x 3)
             (check-expression (list-ref x 0))
             (equal? '=> (list-ref x 1))
             (check-expression (list-ref x 2)))
        (and (proper-list-of-given-length? x 2)
             (check-expression (list-ref x 0))
             (check-expression (list-ref x 1)))
        (and (proper-list-of-given-length? x 1)
             (check-expression (car x))))))

;; CASE
(define check-case-clause ;; Hjælperfunktion
  (lambda (x)
    (letrec ([visit (lambda (x)
                      (if (not (null? x))
                          (if (check-quotation (car x))
                              (visit (cdr x))
                              #f)
                          #t))])
      (visit x))))


(define check-case-expression
  (lambda (x)
    (and
     (check-expression (case-1 x))
     (letrec ([visit (lambda (x)
                       (if (not (proper-list-of-given-length? x 1))
                           (if (and (proper-list-of-given-length? (car x) 2)
                                    (if (list? (list-ref (car x) 0))
                                        (check-case-clause (list-ref (car x) 0))
                                        #f)
                                    (check-expression (list-ref (car x) 1)))
                               (visit (cdr x))
                               #f)
                           (and (proper-list-of-given-length? (car x) 2)
                                (equal? (list-ref (car x) 0) 'else)
                                (check-expression (list-ref (car x) 1)))))])
       (visit (case-2 x))))))

;; LET
(define check-let-expression
  (lambda (x)
    (letrec ([visit (lambda (y z)
                      (if (not (null? y))
                          (if (and (proper-list-of-given-length? (car y) 2)
                                   (if (symbol? (list-ref (car y) 0))
                                       (check-variable (list-ref (car y) 0))
                                       #f)
                                   (check-expression (list-ref (car y) 1))
                                   (not (member (list-ref (car y) 0) z)))
                              (visit (cdr y) (cons (list-ref (car y) 0) z))
                              #f)
                          (check-expression (list-ref x 2))))])
      (visit (list-ref x 1) '()))))

;; LETSTAR
(define check-letstar-expression
  (lambda (x)
    (letrec ([visit (lambda (y)
                      (if (not (null? y))                          
                          (if (and (proper-list-of-given-length? (car y) 2)
                                   (if (symbol? (list-ref (car y) 0))
                                       (check-variable (list-ref (car y) 0))
                                       #f)
                                   (check-expression (list-ref (car y) 1)))
                              (visit (cdr y))
                              #f)
                          (check-expression (list-ref x 2))))])
      (visit (list-ref x 1)))))

;; LETREC
(define check-letrec-expression
  (lambda (x)
    (letrec ([visit (lambda (y z)
                      (if (not (null? y))
                          (if (and (proper-list-of-given-length? (car y) 2)
                                   (if (symbol? (list-ref (car y) 0))
                                       (check-variable (list-ref (car y) 0))
                                       #f)
                                   (if (is-lambda-abstraction? (list-ref (car y) 1))
                                       (check-lambda-abstraction (list-ref (car y) 1))
                                       #f)
                                   (not (member (list-ref (car y) 0) z)))
                              (visit (cdr y) (cons (list-ref (car y) 0) z))
                              #f)
                          (check-expression (list-ref x 2))))])
      (visit (list-ref x 1) '()))))


;; BEGIN
(define check-begin-expression
  (lambda (x)
    (letrec ([visit (lambda (x)
                      (if (not (null? x))
                          (if (check-expression (car x))
                              (visit (cdr x))
                              #f)
                          #t))])
      (visit (cdr x)))))


;; UNLESS (som fra skabelonen)
(define check-unless-expression
  (lambda (test consequent)
    (and (check-expression test)
         (check-expression consequent))))



;; QUOTE
(define check-quotation ;;Hjælpefunktion
  (lambda (x)
    (letrec ([visit (lambda (x)
                      (cond 
                        [(pair? x)
                         (and (visit (car x))
                              (visit (cdr x)))]
                        [(or (number? x)
                             (boolean? x)
                             (char? x)
                             (string? x)
                             (symbol? x)
                             (null? x))
                         #t]
                        [else #f]))])
      (visit x))))

(define check-quote-expression
  (lambda (x)
    (check-quotation (list-ref x 1))))

;; LAMBDA

(define check-lambda-abstraction
  (lambda (x)
    (cond
      [(equal? (car x) 'lambda)                    ;; lambda
       (and (check-lambda-formals (list-ref x 1)) 
            (check-expression (list-ref x 2)))]
      [(equal? (car x) 'trace-lambda)              ;; trace-lambda
       (and (check-quotation (list-ref x 1))
            (check-lambda-formals (list-ref x 2)) 
            (check-expression (list-ref x 3)))]
      [else
      #f])))

(define check-lambda-formals
  (lambda (x)
    (cond
      [(symbol? x)
       (check-variable x)]
      [(list? x)
       (letrec ([visit (lambda (x y)
                         (if (not (null? x))
                             (if (symbol? (car x))
                                 (if (and (check-variable (car x))
                                          (not (member (car x) y)))
                                     (visit (cdr x) (cons (car x) y))
                                     #f) #f) #t))])
         (visit x (list)))]
      
      [else

       (letrec ([visit (lambda (x y)
                         (if (pair? x)
                             (if (symbol? (car x))
                                 (if (and (check-variable (car x))
                                          (not (member (car x) y)))
                                     (visit (cdr x) (cons (car x) y))
                                     #f) #f)
                             (if (symbol? x)
                                 (and (check-variable x)
                                      (not (member x y)))
                                 #f)))])
             (visit x (list)))])))


;;APPLICATION
;;Vendt tilbage til den gode gamle igen
(define check-application 
  (lambda (x)             
    (letrec ([visit (lambda (x)
                      (if (not (null? x))
                          (if (check-expression (car x))
                              (visit (cdr x))
                          #f)
                      #t))])
      (visit x))))

;;;;;;;;;;
;;; auxiliaries:
;;;;;;;;;;
(define keyword?
  (lambda (v)
    (or (equal? v 'define)
        (equal? v 'time)
        (equal? v 'if)
        (equal? v 'cond)
        (equal? v 'else)
        (equal? v 'case)
        (equal? v 'and)
        (equal? v 'or)
        (equal? v 'let)
        (equal? v 'let*)
        (equal? v 'letrec)
        (equal? v 'begin)
        (equal? v 'unless)
        (equal? v 'quote)
        (equal? v 'lambda)
        (equal? v 'trace-lambda)
        )))


(define list-strictly-longer-than?
  (lambda (v n)
    (letrec ([visit (lambda (v i)
                      (and (pair? v)
                           (or (= i 0)
                               (visit (cdr v)
                                      (- i 1)))))])
      (if (>= n 0)
          (visit v n)
          (errorf 'list-strictly-longer-than? "negative length: ~s" n)))))


(define proper-list-of-given-length?
  (lambda (v n)
    (or (and (null? v)
             (= n 0))
        (and (pair? v)
             (> n 0)
             (proper-list-of-given-length? (cdr v)
                                           (- n 1))))))

;;; reads an entire file as a list of Scheme data
;;; use: (read-file "filename.scm")
(define read-file
  (lambda (filename)
    (call-with-input-file filename
      (lambda (p)
        (letrec ([visit (lambda ()
                          (let ([in (read p)])
                            (if (eof-object? in)
                                '()
                                (cons in (visit)))))])
          (visit))))))

;;; interface:
(define check-file
  (lambda (filename)
    (if (string? filename)
        (check-program (read-file filename))
        (errorf 'check-file "not a string: ~s" filename))))

;;;;;;;;;;
;;;;;;;;;;
;;;;;;;;;;
;; == RESUMEET ==
;; "The Realitivity of Wrong" by Isaac Asimov is an essay built upon his reaction to a letter he received from a
;; student majoring in English. This student accuses  Asimov's opinions about how far science has gotten and how scientists finally understand the universe, to be wrong.
;; Asimov defends himself with a long example of how what is wrong and right not necessarily are absolutes, but can be seen with a kind of relativity, thus referring to the title.
;; The example in question is how the earth was first seen as flat, but then determined to be spherical round.
;; Obviously the first case was wrong, but the second case was as well. The earth was not truly spherical but instead an oblate spheroid.
;; The point of this comparison was to show that the idea the earth was flat was completely wrong, but the idea that it was spherical was only a bit wrong.
;; Asimov's argues the fact that even though scientists may still be wrong, they may be less wrong than they were previously, and that is a step in the right direction.
