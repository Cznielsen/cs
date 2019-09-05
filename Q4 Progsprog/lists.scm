;;; lists.scm
;;; dProgSprog 2015-2016, Q4
;;; Olivier Danvy <danvy@cs.au.dk>
;;; Version of 16 May 2016

;;; Accompanying material for the lecture note at
;;;   http://users-cs.au.dk/danvy/dProgSprog16/Lecture-notes/week-6_parameter-passing-strategies.html

;;;;;;;;;;

(define list-a-ref
  (lambda (xs n)
    (if (= n 0)
        (car xs)
        (list-a-ref (cdr xs) (- n 1)))))

(define make-a-list
  (lambda (seed next)
    (letrec ([produce (lambda (current)
                        (begin
                          (display "producing ")
                          (display current)
                          (newline)
                          (cons current
                                (produce (next current)))))])
      (produce seed))))


(define make-a-list-of-nats
  (lambda (n)
    (make-a-list n
                 (lambda (n)
                   (+ n 1)))))

;;;;;;;;;;

;;; end of lists.scm

