ltl { <>[]((n==1) || (n==2)) }

byte    n = 0;
active proctype p() {
   n = 2;
}
active proctype q() {
   n = 1;
}
