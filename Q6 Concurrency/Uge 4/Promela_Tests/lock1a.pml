ltl {[](p0@lock -> <> p0@cs)}

bool flag0, flag1 = false;

active proctype p0() {	
    	 lock: flag0 = true;
    	 wait: do   
    	 :: flag1 -> skip
	 :: else -> break
    	 od;	 
   	 cs: skip;
    	 unlock: flag0 = false;
	 goto lock;
    }	 

active proctype p1() {	
    	 lock: flag1 = true;
    	 wait: do   
    	 :: flag0 -> skip
	 :: else -> break
    	 od;	 
   	 cs: skip;
    	 unlock: flag1 = false;
	 goto lock;
    }	 
