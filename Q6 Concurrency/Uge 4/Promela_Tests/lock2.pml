// ltl {[](!(p0@cs && p1@cs))}
ltl {[](p0@lock -> <> p0@cs)}

byte victim = 0;

active proctype p0() {	
    	 lock: victim = 0;
    	 wait: do   
    	 :: victim == 0 -> skip
	 :: else -> break
    	 od;	 
   	 cs: skip;
    	 unlock: skip;
	 goto lock;
    }	 

active proctype p1() {	
    	 lock: victim = 1;
    	 wait: do   
    	 :: victim == 1 -> skip
	 :: else -> break
    	 od;	 
   	 cs: skip;
    	 unlock: skip;
	 goto lock;
    }	 
