ltl { <>[](n==2) }

byte    n, tp, tq = 0;

active proctype p() {
   atomic{tp = n;
   n = tp + 1};
}
active proctype q() {
   atomic{tq = n;
   n = tq + 1};
}
