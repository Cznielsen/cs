/* Made by CZN on 03-12-2016
 Peterson's algorithm in promela */

// First come first served LTL (0 errors when door = end of door after lock-label, and 1 error when putting it before the lock label)
// ltl {[]((p0@door && p1@play) -> (!p1@cs U p0@cs))}

// 1-bounded wait LTL (0 errors)
// p1 is at lock to test worst case scenario.
// ltl {[]((p0@door && p1@lock) -> (!(p1@cs) W ((p1@cs) W ((!(p1@cs)) W (p0@cs)))))}


// 2-bounded wait (Untested, laptop too slow) Runtime = O(4^|phi|*|M|), where M is the transition system and phi is the ltl formula.
// p1 at lock, same reason as above.
//
// FROM PATTERN 
// ltl {[]((p0@door && p1@lock) -> (!(p1@cs) W ((p1@cs) W (!(p1@cs) W ((p1@cs) W ((!(p1@cs)) W (p0@cs)))))))}
//
// EXPERIMENTAL 
// ltl {[]((p0@door && p1@lock) -> (!(p1@cs) W ((p1@cs) W ((!(p1@cs)) W ((p1@cs) W ([](!(p0@cs))))))))}


bool flag0 = false;
bool flag1 = false;
int victim;

active proctype p0() {
	play: 	do
		  	:: true -> skip
		  	:: true -> break
		  	od;

	lock: 	flag0 = true;
			victim = 0;
	door:	skip;

	wait: 	do
		  	:: (flag1 && victim == 0) -> skip
		  	:: else -> break
		  	od;

	cs:		skip;
			unlock:
				flag0 = false;
				goto play;
}

active proctype p1() {
	play: 	do
		  	:: true -> skip
		  	:: true -> break
		  	od;

	lock: 	flag1 = true;
		  	victim = 1;
	door:	skip;

	wait: 	do
		  	:: (flag0 && victim == 1) -> skip
		  	:: else -> break
		  	od;

	cs:		skip;
			unlock: flag1 = false;
					goto play;
}