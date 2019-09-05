ltl { <>[](n==2) }

byte    n, tp, tq = 0;
active proctype p() {
   tp = n;
   n = tp + 1;
}
active proctype q() {
   tq = n;
   n = tq + 1;
}
