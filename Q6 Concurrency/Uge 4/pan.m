#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM ltl_0 */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [((((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:4 - [((((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][3] = 1;
		if (!(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 5 - _spin_nvr.tmp:5 - [(((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][5] = 1;
		if (!((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 7 - _spin_nvr.tmp:6 - [((((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][7] = 1;
		if (!(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 9 - _spin_nvr.tmp:7 - [((((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][9] = 1;
		if (!(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 11 - _spin_nvr.tmp:8 - [((((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs)))&&!((p1._p==cs))))] (36:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][11] = 1;
		if (!(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!((((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 12, 36) */
		reached[2][12] = 1;
		spin_assert( !(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !(((( !( !(((p0._p==door)&&(p1._p==lock))))&& !( !((p1._p==cs))))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 37, 36) */
		reached[2][37] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 9: // STATE 14 - _spin_nvr.tmp:9 - [((((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][14] = 1;
		if (!(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 16 - _spin_nvr.tmp:10 - [((((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][16] = 1;
		if (!(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 18 - _spin_nvr.tmp:11 - [(((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][18] = 1;
		if (!((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 20 - _spin_nvr.tmp:12 - [(((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][20] = 1;
		if (!((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 22 - _spin_nvr.tmp:13 - [((((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][22] = 1;
		if (!(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 24 - _spin_nvr.tmp:14 - [((((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][24] = 1;
		if (!(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 26 - _spin_nvr.tmp:15 - [((((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][26] = 1;
		if (!(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 28 - _spin_nvr.tmp:16 - [((((!(!(((p0._p==door)&&(p1._p==lock))))&&!(!((p1._p==cs))))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported28 = 0;
			if (verbose && !reported28)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported28 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported28 = 0;
			if (verbose && !reported28)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported28 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][28] = 1;
		if (!(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 30 - _spin_nvr.tmp:17 - [((!(!(((p0._p==door)&&(p1._p==lock))))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported30 = 0;
			if (verbose && !reported30)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported30 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported30 = 0;
			if (verbose && !reported30)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported30 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][30] = 1;
		if (!(( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 32 - _spin_nvr.tmp:18 - [(((!(!(((p0._p==door)&&(p1._p==lock))))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][32] = 1;
		if (!((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==10)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 39 - _spin_nvr.tmp:23 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][39] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 41 - _spin_nvr.tmp:24 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][41] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 43 - _spin_nvr.tmp:25 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][43] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 45 - _spin_nvr.tmp:26 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported45 = 0;
			if (verbose && !reported45)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported45 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported45 = 0;
			if (verbose && !reported45)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported45 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][45] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 47 - _spin_nvr.tmp:27 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (66:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported47 = 0;
			if (verbose && !reported47)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported47 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported47 = 0;
			if (verbose && !reported47)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported47 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][47] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 48, 66) */
		reached[2][48] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 67, 66) */
		reached[2][67] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 24: // STATE 50 - _spin_nvr.tmp:28 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported50 = 0;
			if (verbose && !reported50)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported50 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported50 = 0;
			if (verbose && !reported50)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported50 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][50] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 52 - _spin_nvr.tmp:29 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][52] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 54 - _spin_nvr.tmp:30 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported54 = 0;
			if (verbose && !reported54)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported54 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported54 = 0;
			if (verbose && !reported54)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported54 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][54] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 56 - _spin_nvr.tmp:31 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][56] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 58 - _spin_nvr.tmp:32 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][58] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 60 - _spin_nvr.tmp:33 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported60 = 0;
			if (verbose && !reported60)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported60 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported60 = 0;
			if (verbose && !reported60)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported60 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][60] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 62 - _spin_nvr.tmp:34 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported62 = 0;
			if (verbose && !reported62)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported62 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported62 = 0;
			if (verbose && !reported62)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported62 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][62] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 64 - _spin_nvr.tmp:35 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported64 = 0;
			if (verbose && !reported64)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported64 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported64 = 0;
			if (verbose && !reported64)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported64 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][64] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 69 - _spin_nvr.tmp:39 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported69 = 0;
			if (verbose && !reported69)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported69 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported69 = 0;
			if (verbose && !reported69)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported69 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][69] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 71 - _spin_nvr.tmp:40 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported71 = 0;
			if (verbose && !reported71)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported71 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported71 = 0;
			if (verbose && !reported71)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported71 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][71] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 73 - _spin_nvr.tmp:41 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported73 = 0;
			if (verbose && !reported73)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported73 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported73 = 0;
			if (verbose && !reported73)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported73 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][73] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 75 - _spin_nvr.tmp:42 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported75 = 0;
			if (verbose && !reported75)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported75 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported75 = 0;
			if (verbose && !reported75)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported75 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][75] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 77 - _spin_nvr.tmp:43 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (82:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported77 = 0;
			if (verbose && !reported77)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported77 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported77 = 0;
			if (verbose && !reported77)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported77 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][77] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 78, 82) */
		reached[2][78] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 83, 82) */
		reached[2][83] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 37: // STATE 80 - _spin_nvr.tmp:44 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported80 = 0;
			if (verbose && !reported80)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported80 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported80 = 0;
			if (verbose && !reported80)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported80 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][80] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 85 - _spin_nvr.tmp:48 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported85 = 0;
			if (verbose && !reported85)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported85 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported85 = 0;
			if (verbose && !reported85)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported85 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][85] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 87 - _spin_nvr.tmp:49 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (90:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported87 = 0;
			if (verbose && !reported87)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported87 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported87 = 0;
			if (verbose && !reported87)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported87 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][87] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		/* merge: assert(!((!(!((p1._p==cs)))&&!((p0._p==cs)))))(0, 88, 90) */
		reached[2][88] = 1;
		spin_assert( !(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))), " !(( !( !((p1._p==cs)))&& !((p0._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 91, 90) */
		reached[2][91] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 40: // STATE 93 - _spin_nvr.tmp:53 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported93 = 0;
			if (verbose && !reported93)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported93 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported93 = 0;
			if (verbose && !reported93)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported93 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][93] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 95 - _spin_nvr.tmp:54 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (102:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported95 = 0;
			if (verbose && !reported95)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported95 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported95 = 0;
			if (verbose && !reported95)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported95 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][95] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		/* merge: assert(!((!(!((p1._p==cs)))&&!((p0._p==cs)))))(0, 96, 102) */
		reached[2][96] = 1;
		spin_assert( !(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))), " !(( !( !((p1._p==cs)))&& !((p0._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 103, 102) */
		reached[2][103] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 42: // STATE 98 - _spin_nvr.tmp:55 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported98 = 0;
			if (verbose && !reported98)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported98 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported98 = 0;
			if (verbose && !reported98)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported98 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][98] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 100 - _spin_nvr.tmp:56 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported100 = 0;
			if (verbose && !reported100)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported100 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported100 = 0;
			if (verbose && !reported100)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported100 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][100] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 105 - _spin_nvr.tmp:60 - [(!(!((p1._p==cs))))] (110:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported105 = 0;
			if (verbose && !reported105)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported105 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported105 = 0;
			if (verbose && !reported105)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported105 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][105] = 1;
		if (!( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(!(!((p1._p==cs)))))(0, 106, 110) */
		reached[2][106] = 1;
		spin_assert( !( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !( !( !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 111, 110) */
		reached[2][111] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 45: // STATE 113 - _spin_nvr.tmp:65 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported113 = 0;
			if (verbose && !reported113)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported113 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported113 = 0;
			if (verbose && !reported113)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported113 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][113] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 115 - _spin_nvr.tmp:66 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported115 = 0;
			if (verbose && !reported115)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported115 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported115 = 0;
			if (verbose && !reported115)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported115 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][115] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 117 - _spin_nvr.tmp:67 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported117 = 0;
			if (verbose && !reported117)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported117 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported117 = 0;
			if (verbose && !reported117)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported117 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][117] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 119 - _spin_nvr.tmp:68 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported119 = 0;
			if (verbose && !reported119)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported119 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported119 = 0;
			if (verbose && !reported119)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported119 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][119] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 121 - _spin_nvr.tmp:69 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (138:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported121 = 0;
			if (verbose && !reported121)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported121 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported121 = 0;
			if (verbose && !reported121)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported121 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][121] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 122, 138) */
		reached[2][122] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 139, 138) */
		reached[2][139] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 50: // STATE 124 - _spin_nvr.tmp:70 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported124 = 0;
			if (verbose && !reported124)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported124 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported124 = 0;
			if (verbose && !reported124)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported124 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][124] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 126 - _spin_nvr.tmp:71 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported126 = 0;
			if (verbose && !reported126)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported126 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported126 = 0;
			if (verbose && !reported126)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported126 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][126] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 128 - _spin_nvr.tmp:72 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported128 = 0;
			if (verbose && !reported128)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported128 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported128 = 0;
			if (verbose && !reported128)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported128 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][128] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 130 - _spin_nvr.tmp:73 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported130 = 0;
			if (verbose && !reported130)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported130 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported130 = 0;
			if (verbose && !reported130)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported130 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][130] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 132 - _spin_nvr.tmp:74 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported132 = 0;
			if (verbose && !reported132)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported132 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported132 = 0;
			if (verbose && !reported132)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported132 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][132] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 134 - _spin_nvr.tmp:75 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported134 = 0;
			if (verbose && !reported134)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported134 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported134 = 0;
			if (verbose && !reported134)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported134 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][134] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 136 - _spin_nvr.tmp:76 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported136 = 0;
			if (verbose && !reported136)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported136 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported136 = 0;
			if (verbose && !reported136)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported136 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][136] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 141 - _spin_nvr.tmp:80 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported141 = 0;
			if (verbose && !reported141)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported141 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported141 = 0;
			if (verbose && !reported141)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported141 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][141] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 143 - _spin_nvr.tmp:81 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (150:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported143 = 0;
			if (verbose && !reported143)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported143 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported143 = 0;
			if (verbose && !reported143)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported143 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][143] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 144, 150) */
		reached[2][144] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 151, 150) */
		reached[2][151] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 59: // STATE 146 - _spin_nvr.tmp:82 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported146 = 0;
			if (verbose && !reported146)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported146 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported146 = 0;
			if (verbose && !reported146)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported146 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][146] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 148 - _spin_nvr.tmp:83 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported148 = 0;
			if (verbose && !reported148)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported148 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported148 = 0;
			if (verbose && !reported148)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported148 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][148] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 153 - _spin_nvr.tmp:87 - [(!((p1._p==cs)))] (158:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported153 = 0;
			if (verbose && !reported153)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported153 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported153 = 0;
			if (verbose && !reported153)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported153 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][153] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))
			continue;
		/* merge: assert(!(!((p1._p==cs))))(0, 154, 158) */
		reached[2][154] = 1;
		spin_assert( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))), " !( !((p1._p==cs)))", II, tt, t);
		/* merge: .(goto)(0, 159, 158) */
		reached[2][159] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 62: // STATE 161 - _spin_nvr.tmp:92 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported161 = 0;
			if (verbose && !reported161)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported161 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported161 = 0;
			if (verbose && !reported161)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported161 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][161] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 163 - _spin_nvr.tmp:93 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (178:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported163 = 0;
			if (verbose && !reported163)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported163 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported163 = 0;
			if (verbose && !reported163)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported163 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][163] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 164, 178) */
		reached[2][164] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 179, 178) */
		reached[2][179] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 64: // STATE 166 - _spin_nvr.tmp:94 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported166 = 0;
			if (verbose && !reported166)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported166 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported166 = 0;
			if (verbose && !reported166)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported166 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][166] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 168 - _spin_nvr.tmp:95 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported168 = 0;
			if (verbose && !reported168)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported168 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported168 = 0;
			if (verbose && !reported168)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported168 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][168] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 170 - _spin_nvr.tmp:96 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported170 = 0;
			if (verbose && !reported170)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported170 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported170 = 0;
			if (verbose && !reported170)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported170 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][170] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 172 - _spin_nvr.tmp:97 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported172 = 0;
			if (verbose && !reported172)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported172 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported172 = 0;
			if (verbose && !reported172)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported172 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][172] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 174 - _spin_nvr.tmp:98 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported174 = 0;
			if (verbose && !reported174)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported174 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported174 = 0;
			if (verbose && !reported174)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported174 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][174] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 176 - _spin_nvr.tmp:99 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported176 = 0;
			if (verbose && !reported176)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported176 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported176 = 0;
			if (verbose && !reported176)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported176 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][176] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 181 - _spin_nvr.tmp:103 - [((!(!((p1._p==cs)))&&!((p1._p==cs))))] (190:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported181 = 0;
			if (verbose && !reported181)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported181 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported181 = 0;
			if (verbose && !reported181)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported181 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][181] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!((!(!((p1._p==cs)))&&!((p1._p==cs)))))(0, 182, 190) */
		reached[2][182] = 1;
		spin_assert( !(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !(( !( !((p1._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 191, 190) */
		reached[2][191] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 71: // STATE 184 - _spin_nvr.tmp:104 - [(!(!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported184 = 0;
			if (verbose && !reported184)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported184 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported184 = 0;
			if (verbose && !reported184)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported184 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][184] = 1;
		if (!( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 186 - _spin_nvr.tmp:105 - [(!((p1._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported186 = 0;
			if (verbose && !reported186)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported186 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported186 = 0;
			if (verbose && !reported186)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported186 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][186] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 193 - _spin_nvr.tmp:110 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported193 = 0;
			if (verbose && !reported193)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported193 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported193 = 0;
			if (verbose && !reported193)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported193 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][193] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 195 - _spin_nvr.tmp:111 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported195 = 0;
			if (verbose && !reported195)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported195 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported195 = 0;
			if (verbose && !reported195)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported195 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][195] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 197 - _spin_nvr.tmp:112 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported197 = 0;
			if (verbose && !reported197)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported197 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported197 = 0;
			if (verbose && !reported197)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported197 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][197] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 199 - _spin_nvr.tmp:113 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported199 = 0;
			if (verbose && !reported199)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported199 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported199 = 0;
			if (verbose && !reported199)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported199 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][199] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 201 - _spin_nvr.tmp:114 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported201 = 0;
			if (verbose && !reported201)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported201 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported201 = 0;
			if (verbose && !reported201)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported201 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][201] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 203 - _spin_nvr.tmp:115 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported203 = 0;
			if (verbose && !reported203)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported203 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported203 = 0;
			if (verbose && !reported203)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported203 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][203] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 205 - _spin_nvr.tmp:116 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported205 = 0;
			if (verbose && !reported205)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported205 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported205 = 0;
			if (verbose && !reported205)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported205 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][205] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 207 - _spin_nvr.tmp:117 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported207 = 0;
			if (verbose && !reported207)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported207 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported207 = 0;
			if (verbose && !reported207)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported207 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][207] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 209 - _spin_nvr.tmp:118 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported209 = 0;
			if (verbose && !reported209)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported209 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported209 = 0;
			if (verbose && !reported209)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported209 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][209] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 211 - _spin_nvr.tmp:119 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (222:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported211 = 0;
			if (verbose && !reported211)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported211 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported211 = 0;
			if (verbose && !reported211)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported211 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][211] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 212, 222) */
		reached[2][212] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 223, 222) */
		reached[2][223] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 83: // STATE 214 - _spin_nvr.tmp:120 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported214 = 0;
			if (verbose && !reported214)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported214 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported214 = 0;
			if (verbose && !reported214)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported214 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][214] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 216 - _spin_nvr.tmp:121 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported216 = 0;
			if (verbose && !reported216)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported216 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported216 = 0;
			if (verbose && !reported216)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported216 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][216] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 218 - _spin_nvr.tmp:122 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported218 = 0;
			if (verbose && !reported218)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported218 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported218 = 0;
			if (verbose && !reported218)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported218 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][218] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 220 - _spin_nvr.tmp:123 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported220 = 0;
			if (verbose && !reported220)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported220 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported220 = 0;
			if (verbose && !reported220)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported220 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][220] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 225 - _spin_nvr.tmp:127 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported225 = 0;
			if (verbose && !reported225)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported225 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported225 = 0;
			if (verbose && !reported225)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported225 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][225] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 227 - _spin_nvr.tmp:128 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported227 = 0;
			if (verbose && !reported227)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported227 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported227 = 0;
			if (verbose && !reported227)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported227 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][227] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 229 - _spin_nvr.tmp:129 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported229 = 0;
			if (verbose && !reported229)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported229 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported229 = 0;
			if (verbose && !reported229)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported229 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][229] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 231 - _spin_nvr.tmp:130 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported231 = 0;
			if (verbose && !reported231)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported231 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported231 = 0;
			if (verbose && !reported231)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported231 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][231] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 233 - _spin_nvr.tmp:131 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported233 = 0;
			if (verbose && !reported233)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported233 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported233 = 0;
			if (verbose && !reported233)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported233 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][233] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 235 - _spin_nvr.tmp:132 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported235 = 0;
			if (verbose && !reported235)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported235 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported235 = 0;
			if (verbose && !reported235)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported235 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][235] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 237 - _spin_nvr.tmp:133 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported237 = 0;
			if (verbose && !reported237)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported237 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported237 = 0;
			if (verbose && !reported237)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported237 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][237] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 239 - _spin_nvr.tmp:134 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported239 = 0;
			if (verbose && !reported239)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported239 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported239 = 0;
			if (verbose && !reported239)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported239 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][239] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 241 - _spin_nvr.tmp:135 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported241 = 0;
			if (verbose && !reported241)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported241 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported241 = 0;
			if (verbose && !reported241)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported241 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][241] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 243 - _spin_nvr.tmp:136 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported243 = 0;
			if (verbose && !reported243)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported243 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported243 = 0;
			if (verbose && !reported243)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported243 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][243] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 245 - _spin_nvr.tmp:137 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported245 = 0;
			if (verbose && !reported245)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported245 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported245 = 0;
			if (verbose && !reported245)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported245 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][245] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 247 - _spin_nvr.tmp:138 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (256:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported247 = 0;
			if (verbose && !reported247)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported247 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported247 = 0;
			if (verbose && !reported247)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported247 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][247] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 248, 256) */
		reached[2][248] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 257, 256) */
		reached[2][257] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 99: // STATE 250 - _spin_nvr.tmp:139 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported250 = 0;
			if (verbose && !reported250)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported250 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported250 = 0;
			if (verbose && !reported250)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported250 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][250] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 252 - _spin_nvr.tmp:140 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported252 = 0;
			if (verbose && !reported252)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported252 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported252 = 0;
			if (verbose && !reported252)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported252 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][252] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 254 - _spin_nvr.tmp:141 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported254 = 0;
			if (verbose && !reported254)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported254 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported254 = 0;
			if (verbose && !reported254)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported254 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][254] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 259 - _spin_nvr.tmp:145 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported259 = 0;
			if (verbose && !reported259)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported259 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported259 = 0;
			if (verbose && !reported259)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported259 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][259] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 261 - _spin_nvr.tmp:146 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (276:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported261 = 0;
			if (verbose && !reported261)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported261 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported261 = 0;
			if (verbose && !reported261)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported261 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][261] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 262, 276) */
		reached[2][262] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 277, 276) */
		reached[2][277] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 104: // STATE 264 - _spin_nvr.tmp:147 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported264 = 0;
			if (verbose && !reported264)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported264 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported264 = 0;
			if (verbose && !reported264)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported264 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][264] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 266 - _spin_nvr.tmp:148 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported266 = 0;
			if (verbose && !reported266)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported266 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported266 = 0;
			if (verbose && !reported266)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported266 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][266] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 268 - _spin_nvr.tmp:149 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported268 = 0;
			if (verbose && !reported268)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported268 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported268 = 0;
			if (verbose && !reported268)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported268 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][268] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 270 - _spin_nvr.tmp:150 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported270 = 0;
			if (verbose && !reported270)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported270 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported270 = 0;
			if (verbose && !reported270)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported270 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][270] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 272 - _spin_nvr.tmp:151 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported272 = 0;
			if (verbose && !reported272)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported272 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported272 = 0;
			if (verbose && !reported272)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported272 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][272] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 274 - _spin_nvr.tmp:152 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported274 = 0;
			if (verbose && !reported274)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported274 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported274 = 0;
			if (verbose && !reported274)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported274 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][274] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 279 - _spin_nvr.tmp:156 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported279 = 0;
			if (verbose && !reported279)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported279 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported279 = 0;
			if (verbose && !reported279)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported279 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][279] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 281 - _spin_nvr.tmp:157 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported281 = 0;
			if (verbose && !reported281)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported281 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported281 = 0;
			if (verbose && !reported281)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported281 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][281] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 283 - _spin_nvr.tmp:158 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported283 = 0;
			if (verbose && !reported283)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported283 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported283 = 0;
			if (verbose && !reported283)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported283 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][283] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 285 - _spin_nvr.tmp:159 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported285 = 0;
			if (verbose && !reported285)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported285 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported285 = 0;
			if (verbose && !reported285)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported285 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][285] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 287 - _spin_nvr.tmp:160 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported287 = 0;
			if (verbose && !reported287)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported287 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported287 = 0;
			if (verbose && !reported287)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported287 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][287] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 289 - _spin_nvr.tmp:161 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported289 = 0;
			if (verbose && !reported289)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported289 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported289 = 0;
			if (verbose && !reported289)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported289 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][289] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 291 - _spin_nvr.tmp:162 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported291 = 0;
			if (verbose && !reported291)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported291 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported291 = 0;
			if (verbose && !reported291)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported291 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][291] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 293 - _spin_nvr.tmp:163 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported293 = 0;
			if (verbose && !reported293)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported293 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported293 = 0;
			if (verbose && !reported293)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported293 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][293] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 295 - _spin_nvr.tmp:164 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported295 = 0;
			if (verbose && !reported295)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported295 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported295 = 0;
			if (verbose && !reported295)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported295 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][295] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 297 - _spin_nvr.tmp:165 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported297 = 0;
			if (verbose && !reported297)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported297 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported297 = 0;
			if (verbose && !reported297)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported297 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][297] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 299 - _spin_nvr.tmp:166 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (308:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported299 = 0;
			if (verbose && !reported299)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported299 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported299 = 0;
			if (verbose && !reported299)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported299 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][299] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 300, 308) */
		reached[2][300] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 309, 308) */
		reached[2][309] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 121: // STATE 302 - _spin_nvr.tmp:167 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported302 = 0;
			if (verbose && !reported302)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported302 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported302 = 0;
			if (verbose && !reported302)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported302 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][302] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 304 - _spin_nvr.tmp:168 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported304 = 0;
			if (verbose && !reported304)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported304 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported304 = 0;
			if (verbose && !reported304)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported304 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][304] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 306 - _spin_nvr.tmp:169 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported306 = 0;
			if (verbose && !reported306)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported306 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported306 = 0;
			if (verbose && !reported306)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported306 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][306] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 311 - _spin_nvr.tmp:173 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported311 = 0;
			if (verbose && !reported311)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported311 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported311 = 0;
			if (verbose && !reported311)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported311 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][311] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 313 - _spin_nvr.tmp:174 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported313 = 0;
			if (verbose && !reported313)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported313 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported313 = 0;
			if (verbose && !reported313)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported313 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][313] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 315 - _spin_nvr.tmp:175 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported315 = 0;
			if (verbose && !reported315)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported315 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported315 = 0;
			if (verbose && !reported315)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported315 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][315] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 317 - _spin_nvr.tmp:176 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported317 = 0;
			if (verbose && !reported317)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported317 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported317 = 0;
			if (verbose && !reported317)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported317 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][317] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 319 - _spin_nvr.tmp:177 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported319 = 0;
			if (verbose && !reported319)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported319 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported319 = 0;
			if (verbose && !reported319)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported319 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][319] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 321 - _spin_nvr.tmp:178 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported321 = 0;
			if (verbose && !reported321)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported321 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported321 = 0;
			if (verbose && !reported321)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported321 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][321] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 323 - _spin_nvr.tmp:179 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported323 = 0;
			if (verbose && !reported323)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported323 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported323 = 0;
			if (verbose && !reported323)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported323 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][323] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 325 - _spin_nvr.tmp:180 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported325 = 0;
			if (verbose && !reported325)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported325 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported325 = 0;
			if (verbose && !reported325)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported325 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][325] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 327 - _spin_nvr.tmp:181 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported327 = 0;
			if (verbose && !reported327)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported327 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported327 = 0;
			if (verbose && !reported327)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported327 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][327] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 329 - _spin_nvr.tmp:182 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported329 = 0;
			if (verbose && !reported329)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported329 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported329 = 0;
			if (verbose && !reported329)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported329 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][329] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 331 - _spin_nvr.tmp:183 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported331 = 0;
			if (verbose && !reported331)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported331 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported331 = 0;
			if (verbose && !reported331)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported331 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][331] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 333 - _spin_nvr.tmp:184 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (342:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported333 = 0;
			if (verbose && !reported333)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported333 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported333 = 0;
			if (verbose && !reported333)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported333 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][333] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 334, 342) */
		reached[2][334] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 343, 342) */
		reached[2][343] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 136: // STATE 336 - _spin_nvr.tmp:185 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported336 = 0;
			if (verbose && !reported336)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported336 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported336 = 0;
			if (verbose && !reported336)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported336 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][336] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 338 - _spin_nvr.tmp:186 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported338 = 0;
			if (verbose && !reported338)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported338 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported338 = 0;
			if (verbose && !reported338)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported338 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][338] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 340 - _spin_nvr.tmp:187 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported340 = 0;
			if (verbose && !reported340)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported340 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported340 = 0;
			if (verbose && !reported340)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported340 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][340] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 345 - _spin_nvr.tmp:191 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported345 = 0;
			if (verbose && !reported345)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported345 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported345 = 0;
			if (verbose && !reported345)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported345 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][345] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 347 - _spin_nvr.tmp:192 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported347 = 0;
			if (verbose && !reported347)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported347 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported347 = 0;
			if (verbose && !reported347)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported347 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][347] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 349 - _spin_nvr.tmp:193 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported349 = 0;
			if (verbose && !reported349)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported349 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported349 = 0;
			if (verbose && !reported349)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported349 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][349] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 351 - _spin_nvr.tmp:194 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported351 = 0;
			if (verbose && !reported351)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported351 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported351 = 0;
			if (verbose && !reported351)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported351 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][351] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 353 - _spin_nvr.tmp:195 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported353 = 0;
			if (verbose && !reported353)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported353 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported353 = 0;
			if (verbose && !reported353)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported353 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][353] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 355 - _spin_nvr.tmp:196 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (376:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported355 = 0;
			if (verbose && !reported355)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported355 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported355 = 0;
			if (verbose && !reported355)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported355 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][355] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 356, 376) */
		reached[2][356] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 377, 376) */
		reached[2][377] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 145: // STATE 358 - _spin_nvr.tmp:197 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported358 = 0;
			if (verbose && !reported358)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported358 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported358 = 0;
			if (verbose && !reported358)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported358 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][358] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 360 - _spin_nvr.tmp:198 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported360 = 0;
			if (verbose && !reported360)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported360 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported360 = 0;
			if (verbose && !reported360)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported360 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][360] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 362 - _spin_nvr.tmp:199 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported362 = 0;
			if (verbose && !reported362)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported362 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported362 = 0;
			if (verbose && !reported362)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported362 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][362] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 364 - _spin_nvr.tmp:200 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported364 = 0;
			if (verbose && !reported364)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported364 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported364 = 0;
			if (verbose && !reported364)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported364 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][364] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 366 - _spin_nvr.tmp:201 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported366 = 0;
			if (verbose && !reported366)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported366 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported366 = 0;
			if (verbose && !reported366)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported366 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][366] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 368 - _spin_nvr.tmp:202 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported368 = 0;
			if (verbose && !reported368)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported368 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported368 = 0;
			if (verbose && !reported368)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported368 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][368] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 370 - _spin_nvr.tmp:203 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported370 = 0;
			if (verbose && !reported370)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported370 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported370 = 0;
			if (verbose && !reported370)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported370 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][370] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 372 - _spin_nvr.tmp:204 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported372 = 0;
			if (verbose && !reported372)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported372 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported372 = 0;
			if (verbose && !reported372)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported372 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][372] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 374 - _spin_nvr.tmp:205 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported374 = 0;
			if (verbose && !reported374)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported374 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported374 = 0;
			if (verbose && !reported374)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported374 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][374] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 379 - _spin_nvr.tmp:209 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported379 = 0;
			if (verbose && !reported379)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported379 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported379 = 0;
			if (verbose && !reported379)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported379 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][379] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 381 - _spin_nvr.tmp:210 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported381 = 0;
			if (verbose && !reported381)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported381 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported381 = 0;
			if (verbose && !reported381)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported381 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][381] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 383 - _spin_nvr.tmp:211 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported383 = 0;
			if (verbose && !reported383)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported383 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported383 = 0;
			if (verbose && !reported383)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported383 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][383] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 385 - _spin_nvr.tmp:212 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported385 = 0;
			if (verbose && !reported385)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported385 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported385 = 0;
			if (verbose && !reported385)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported385 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][385] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 387 - _spin_nvr.tmp:213 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (394:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported387 = 0;
			if (verbose && !reported387)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported387 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported387 = 0;
			if (verbose && !reported387)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported387 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][387] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 388, 394) */
		reached[2][388] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 395, 394) */
		reached[2][395] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 159: // STATE 390 - _spin_nvr.tmp:214 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported390 = 0;
			if (verbose && !reported390)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported390 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported390 = 0;
			if (verbose && !reported390)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported390 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][390] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 392 - _spin_nvr.tmp:215 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported392 = 0;
			if (verbose && !reported392)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported392 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported392 = 0;
			if (verbose && !reported392)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported392 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][392] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 397 - _spin_nvr.tmp:219 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported397 = 0;
			if (verbose && !reported397)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported397 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported397 = 0;
			if (verbose && !reported397)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported397 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][397] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 399 - _spin_nvr.tmp:220 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (406:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported399 = 0;
			if (verbose && !reported399)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported399 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported399 = 0;
			if (verbose && !reported399)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported399 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][399] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		/* merge: assert(!((!(!((p1._p==cs)))&&!((p0._p==cs)))))(0, 400, 406) */
		reached[2][400] = 1;
		spin_assert( !(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))), " !(( !( !((p1._p==cs)))&& !((p0._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 407, 406) */
		reached[2][407] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 163: // STATE 402 - _spin_nvr.tmp:221 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported402 = 0;
			if (verbose && !reported402)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported402 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported402 = 0;
			if (verbose && !reported402)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported402 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][402] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 404 - _spin_nvr.tmp:222 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported404 = 0;
			if (verbose && !reported404)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported404 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported404 = 0;
			if (verbose && !reported404)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported404 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][404] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 409 - _spin_nvr.tmp:226 - [(!(!((p1._p==cs))))] (414:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported409 = 0;
			if (verbose && !reported409)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported409 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported409 = 0;
			if (verbose && !reported409)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported409 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][409] = 1;
		if (!( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(!(!((p1._p==cs)))))(0, 410, 414) */
		reached[2][410] = 1;
		spin_assert( !( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !( !( !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 415, 414) */
		reached[2][415] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 166: // STATE 417 - _spin_nvr.tmp:231 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported417 = 0;
			if (verbose && !reported417)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported417 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported417 = 0;
			if (verbose && !reported417)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported417 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][417] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 419 - _spin_nvr.tmp:232 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported419 = 0;
			if (verbose && !reported419)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported419 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported419 = 0;
			if (verbose && !reported419)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported419 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][419] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 421 - _spin_nvr.tmp:233 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported421 = 0;
			if (verbose && !reported421)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported421 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported421 = 0;
			if (verbose && !reported421)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported421 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][421] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 423 - _spin_nvr.tmp:234 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported423 = 0;
			if (verbose && !reported423)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported423 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported423 = 0;
			if (verbose && !reported423)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported423 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][423] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 425 - _spin_nvr.tmp:235 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (442:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported425 = 0;
			if (verbose && !reported425)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported425 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported425 = 0;
			if (verbose && !reported425)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported425 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][425] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 426, 442) */
		reached[2][426] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 443, 442) */
		reached[2][443] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 171: // STATE 428 - _spin_nvr.tmp:236 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported428 = 0;
			if (verbose && !reported428)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported428 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported428 = 0;
			if (verbose && !reported428)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported428 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][428] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 430 - _spin_nvr.tmp:237 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported430 = 0;
			if (verbose && !reported430)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported430 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported430 = 0;
			if (verbose && !reported430)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported430 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][430] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 432 - _spin_nvr.tmp:238 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported432 = 0;
			if (verbose && !reported432)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported432 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported432 = 0;
			if (verbose && !reported432)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported432 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][432] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 434 - _spin_nvr.tmp:239 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported434 = 0;
			if (verbose && !reported434)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported434 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported434 = 0;
			if (verbose && !reported434)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported434 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][434] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 436 - _spin_nvr.tmp:240 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported436 = 0;
			if (verbose && !reported436)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported436 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported436 = 0;
			if (verbose && !reported436)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported436 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][436] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 438 - _spin_nvr.tmp:241 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported438 = 0;
			if (verbose && !reported438)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported438 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported438 = 0;
			if (verbose && !reported438)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported438 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][438] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 440 - _spin_nvr.tmp:242 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported440 = 0;
			if (verbose && !reported440)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported440 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported440 = 0;
			if (verbose && !reported440)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported440 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][440] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 445 - _spin_nvr.tmp:246 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported445 = 0;
			if (verbose && !reported445)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported445 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported445 = 0;
			if (verbose && !reported445)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported445 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][445] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 179: // STATE 447 - _spin_nvr.tmp:247 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported447 = 0;
			if (verbose && !reported447)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported447 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported447 = 0;
			if (verbose && !reported447)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported447 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][447] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 449 - _spin_nvr.tmp:248 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported449 = 0;
			if (verbose && !reported449)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported449 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported449 = 0;
			if (verbose && !reported449)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported449 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][449] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 451 - _spin_nvr.tmp:249 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported451 = 0;
			if (verbose && !reported451)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported451 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported451 = 0;
			if (verbose && !reported451)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported451 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][451] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 453 - _spin_nvr.tmp:250 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported453 = 0;
			if (verbose && !reported453)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported453 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported453 = 0;
			if (verbose && !reported453)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported453 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][453] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 455 - _spin_nvr.tmp:251 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (474:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported455 = 0;
			if (verbose && !reported455)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported455 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported455 = 0;
			if (verbose && !reported455)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported455 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][455] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 456, 474) */
		reached[2][456] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 475, 474) */
		reached[2][475] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 184: // STATE 458 - _spin_nvr.tmp:252 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported458 = 0;
			if (verbose && !reported458)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported458 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported458 = 0;
			if (verbose && !reported458)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported458 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][458] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 460 - _spin_nvr.tmp:253 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported460 = 0;
			if (verbose && !reported460)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported460 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported460 = 0;
			if (verbose && !reported460)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported460 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][460] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 462 - _spin_nvr.tmp:254 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported462 = 0;
			if (verbose && !reported462)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported462 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported462 = 0;
			if (verbose && !reported462)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported462 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][462] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 464 - _spin_nvr.tmp:255 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported464 = 0;
			if (verbose && !reported464)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported464 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported464 = 0;
			if (verbose && !reported464)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported464 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][464] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 466 - _spin_nvr.tmp:256 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported466 = 0;
			if (verbose && !reported466)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported466 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported466 = 0;
			if (verbose && !reported466)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported466 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][466] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 468 - _spin_nvr.tmp:257 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported468 = 0;
			if (verbose && !reported468)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported468 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported468 = 0;
			if (verbose && !reported468)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported468 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][468] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 470 - _spin_nvr.tmp:258 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported470 = 0;
			if (verbose && !reported470)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported470 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported470 = 0;
			if (verbose && !reported470)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported470 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][470] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 472 - _spin_nvr.tmp:259 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported472 = 0;
			if (verbose && !reported472)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported472 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported472 = 0;
			if (verbose && !reported472)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported472 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][472] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 477 - _spin_nvr.tmp:263 - [((!(!((p1._p==cs)))&&!((p1._p==cs))))] (486:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported477 = 0;
			if (verbose && !reported477)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported477 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported477 = 0;
			if (verbose && !reported477)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported477 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][477] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!((!(!((p1._p==cs)))&&!((p1._p==cs)))))(0, 478, 486) */
		reached[2][478] = 1;
		spin_assert( !(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !(( !( !((p1._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 487, 486) */
		reached[2][487] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 193: // STATE 480 - _spin_nvr.tmp:264 - [(!(!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported480 = 0;
			if (verbose && !reported480)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported480 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported480 = 0;
			if (verbose && !reported480)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported480 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][480] = 1;
		if (!( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 482 - _spin_nvr.tmp:265 - [(!((p1._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported482 = 0;
			if (verbose && !reported482)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported482 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported482 = 0;
			if (verbose && !reported482)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported482 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][482] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 489 - _spin_nvr.tmp:270 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported489 = 0;
			if (verbose && !reported489)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported489 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported489 = 0;
			if (verbose && !reported489)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported489 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][489] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 491 - _spin_nvr.tmp:271 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported491 = 0;
			if (verbose && !reported491)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported491 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported491 = 0;
			if (verbose && !reported491)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported491 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][491] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 493 - _spin_nvr.tmp:272 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported493 = 0;
			if (verbose && !reported493)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported493 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported493 = 0;
			if (verbose && !reported493)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported493 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][493] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 495 - _spin_nvr.tmp:273 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported495 = 0;
			if (verbose && !reported495)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported495 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported495 = 0;
			if (verbose && !reported495)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported495 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][495] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 497 - _spin_nvr.tmp:274 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported497 = 0;
			if (verbose && !reported497)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported497 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported497 = 0;
			if (verbose && !reported497)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported497 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][497] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 499 - _spin_nvr.tmp:275 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported499 = 0;
			if (verbose && !reported499)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported499 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported499 = 0;
			if (verbose && !reported499)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported499 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][499] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 501 - _spin_nvr.tmp:276 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported501 = 0;
			if (verbose && !reported501)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported501 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported501 = 0;
			if (verbose && !reported501)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported501 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][501] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 503 - _spin_nvr.tmp:277 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported503 = 0;
			if (verbose && !reported503)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported503 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported503 = 0;
			if (verbose && !reported503)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported503 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][503] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 505 - _spin_nvr.tmp:278 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported505 = 0;
			if (verbose && !reported505)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported505 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported505 = 0;
			if (verbose && !reported505)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported505 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][505] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 507 - _spin_nvr.tmp:279 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported507 = 0;
			if (verbose && !reported507)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported507 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported507 = 0;
			if (verbose && !reported507)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported507 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][507] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 509 - _spin_nvr.tmp:280 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported509 = 0;
			if (verbose && !reported509)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported509 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported509 = 0;
			if (verbose && !reported509)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported509 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][509] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 511 - _spin_nvr.tmp:281 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported511 = 0;
			if (verbose && !reported511)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported511 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported511 = 0;
			if (verbose && !reported511)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported511 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][511] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 513 - _spin_nvr.tmp:282 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported513 = 0;
			if (verbose && !reported513)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported513 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported513 = 0;
			if (verbose && !reported513)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported513 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][513] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 515 - _spin_nvr.tmp:283 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (526:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported515 = 0;
			if (verbose && !reported515)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported515 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported515 = 0;
			if (verbose && !reported515)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported515 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][515] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 516, 526) */
		reached[2][516] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 527, 526) */
		reached[2][527] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 209: // STATE 518 - _spin_nvr.tmp:284 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported518 = 0;
			if (verbose && !reported518)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported518 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported518 = 0;
			if (verbose && !reported518)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported518 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][518] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 520 - _spin_nvr.tmp:285 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported520 = 0;
			if (verbose && !reported520)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported520 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported520 = 0;
			if (verbose && !reported520)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported520 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][520] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 522 - _spin_nvr.tmp:286 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported522 = 0;
			if (verbose && !reported522)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported522 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported522 = 0;
			if (verbose && !reported522)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported522 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][522] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 524 - _spin_nvr.tmp:287 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported524 = 0;
			if (verbose && !reported524)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported524 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported524 = 0;
			if (verbose && !reported524)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported524 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][524] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 529 - _spin_nvr.tmp:291 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported529 = 0;
			if (verbose && !reported529)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported529 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported529 = 0;
			if (verbose && !reported529)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported529 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][529] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 531 - _spin_nvr.tmp:292 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported531 = 0;
			if (verbose && !reported531)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported531 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported531 = 0;
			if (verbose && !reported531)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported531 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][531] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 533 - _spin_nvr.tmp:293 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported533 = 0;
			if (verbose && !reported533)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported533 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported533 = 0;
			if (verbose && !reported533)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported533 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][533] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 216: // STATE 535 - _spin_nvr.tmp:294 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported535 = 0;
			if (verbose && !reported535)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported535 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported535 = 0;
			if (verbose && !reported535)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported535 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][535] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 537 - _spin_nvr.tmp:295 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported537 = 0;
			if (verbose && !reported537)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported537 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported537 = 0;
			if (verbose && !reported537)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported537 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][537] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 539 - _spin_nvr.tmp:296 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (562:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported539 = 0;
			if (verbose && !reported539)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported539 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported539 = 0;
			if (verbose && !reported539)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported539 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][539] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 540, 562) */
		reached[2][540] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 563, 562) */
		reached[2][563] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 219: // STATE 542 - _spin_nvr.tmp:297 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported542 = 0;
			if (verbose && !reported542)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported542 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported542 = 0;
			if (verbose && !reported542)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported542 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][542] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 544 - _spin_nvr.tmp:298 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported544 = 0;
			if (verbose && !reported544)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported544 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported544 = 0;
			if (verbose && !reported544)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported544 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][544] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 221: // STATE 546 - _spin_nvr.tmp:299 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported546 = 0;
			if (verbose && !reported546)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported546 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported546 = 0;
			if (verbose && !reported546)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported546 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][546] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 548 - _spin_nvr.tmp:300 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported548 = 0;
			if (verbose && !reported548)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported548 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported548 = 0;
			if (verbose && !reported548)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported548 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][548] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 550 - _spin_nvr.tmp:301 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported550 = 0;
			if (verbose && !reported550)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported550 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported550 = 0;
			if (verbose && !reported550)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported550 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][550] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 552 - _spin_nvr.tmp:302 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported552 = 0;
			if (verbose && !reported552)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported552 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported552 = 0;
			if (verbose && !reported552)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported552 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][552] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 554 - _spin_nvr.tmp:303 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported554 = 0;
			if (verbose && !reported554)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported554 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported554 = 0;
			if (verbose && !reported554)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported554 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][554] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 556 - _spin_nvr.tmp:304 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported556 = 0;
			if (verbose && !reported556)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported556 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported556 = 0;
			if (verbose && !reported556)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported556 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][556] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 227: // STATE 558 - _spin_nvr.tmp:305 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported558 = 0;
			if (verbose && !reported558)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported558 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported558 = 0;
			if (verbose && !reported558)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported558 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][558] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 228: // STATE 560 - _spin_nvr.tmp:306 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported560 = 0;
			if (verbose && !reported560)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported560 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported560 = 0;
			if (verbose && !reported560)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported560 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][560] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 229: // STATE 565 - _spin_nvr.tmp:310 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported565 = 0;
			if (verbose && !reported565)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported565 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported565 = 0;
			if (verbose && !reported565)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported565 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][565] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 230: // STATE 567 - _spin_nvr.tmp:311 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported567 = 0;
			if (verbose && !reported567)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported567 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported567 = 0;
			if (verbose && !reported567)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported567 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][567] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 231: // STATE 569 - _spin_nvr.tmp:312 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported569 = 0;
			if (verbose && !reported569)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported569 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported569 = 0;
			if (verbose && !reported569)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported569 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][569] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 232: // STATE 571 - _spin_nvr.tmp:313 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (578:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported571 = 0;
			if (verbose && !reported571)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported571 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported571 = 0;
			if (verbose && !reported571)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported571 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][571] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 572, 578) */
		reached[2][572] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 579, 578) */
		reached[2][579] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 233: // STATE 574 - _spin_nvr.tmp:314 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported574 = 0;
			if (verbose && !reported574)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported574 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported574 = 0;
			if (verbose && !reported574)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported574 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][574] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 234: // STATE 576 - _spin_nvr.tmp:315 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported576 = 0;
			if (verbose && !reported576)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported576 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported576 = 0;
			if (verbose && !reported576)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported576 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][576] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 235: // STATE 581 - _spin_nvr.tmp:319 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported581 = 0;
			if (verbose && !reported581)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported581 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported581 = 0;
			if (verbose && !reported581)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported581 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][581] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 236: // STATE 583 - _spin_nvr.tmp:320 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported583 = 0;
			if (verbose && !reported583)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported583 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported583 = 0;
			if (verbose && !reported583)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported583 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][583] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 585 - _spin_nvr.tmp:321 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported585 = 0;
			if (verbose && !reported585)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported585 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported585 = 0;
			if (verbose && !reported585)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported585 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][585] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 238: // STATE 587 - _spin_nvr.tmp:322 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported587 = 0;
			if (verbose && !reported587)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported587 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported587 = 0;
			if (verbose && !reported587)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported587 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][587] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 239: // STATE 589 - _spin_nvr.tmp:323 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (596:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported589 = 0;
			if (verbose && !reported589)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported589 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported589 = 0;
			if (verbose && !reported589)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported589 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][589] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 590, 596) */
		reached[2][590] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 597, 596) */
		reached[2][597] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 240: // STATE 592 - _spin_nvr.tmp:324 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported592 = 0;
			if (verbose && !reported592)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported592 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported592 = 0;
			if (verbose && !reported592)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported592 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][592] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 241: // STATE 594 - _spin_nvr.tmp:325 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported594 = 0;
			if (verbose && !reported594)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported594 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported594 = 0;
			if (verbose && !reported594)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported594 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][594] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 242: // STATE 599 - _spin_nvr.tmp:329 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported599 = 0;
			if (verbose && !reported599)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported599 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported599 = 0;
			if (verbose && !reported599)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported599 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][599] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 243: // STATE 601 - _spin_nvr.tmp:330 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (608:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported601 = 0;
			if (verbose && !reported601)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported601 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported601 = 0;
			if (verbose && !reported601)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported601 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][601] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		/* merge: assert(!((!(!((p1._p==cs)))&&!((p0._p==cs)))))(0, 602, 608) */
		reached[2][602] = 1;
		spin_assert( !(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))), " !(( !( !((p1._p==cs)))&& !((p0._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 609, 608) */
		reached[2][609] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 244: // STATE 604 - _spin_nvr.tmp:331 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported604 = 0;
			if (verbose && !reported604)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported604 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported604 = 0;
			if (verbose && !reported604)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported604 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][604] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 245: // STATE 606 - _spin_nvr.tmp:332 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported606 = 0;
			if (verbose && !reported606)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported606 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported606 = 0;
			if (verbose && !reported606)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported606 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][606] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 246: // STATE 611 - _spin_nvr.tmp:336 - [(!(!((p1._p==cs))))] (616:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported611 = 0;
			if (verbose && !reported611)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported611 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported611 = 0;
			if (verbose && !reported611)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported611 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][611] = 1;
		if (!( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(!(!((p1._p==cs)))))(0, 612, 616) */
		reached[2][612] = 1;
		spin_assert( !( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !( !( !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 617, 616) */
		reached[2][617] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 247: // STATE 619 - _spin_nvr.tmp:341 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported619 = 0;
			if (verbose && !reported619)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported619 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported619 = 0;
			if (verbose && !reported619)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported619 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][619] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 248: // STATE 621 - _spin_nvr.tmp:342 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported621 = 0;
			if (verbose && !reported621)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported621 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported621 = 0;
			if (verbose && !reported621)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported621 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][621] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 249: // STATE 623 - _spin_nvr.tmp:343 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported623 = 0;
			if (verbose && !reported623)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported623 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported623 = 0;
			if (verbose && !reported623)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported623 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][623] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 250: // STATE 625 - _spin_nvr.tmp:344 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported625 = 0;
			if (verbose && !reported625)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported625 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported625 = 0;
			if (verbose && !reported625)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported625 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][625] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 251: // STATE 627 - _spin_nvr.tmp:345 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (646:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported627 = 0;
			if (verbose && !reported627)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported627 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported627 = 0;
			if (verbose && !reported627)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported627 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][627] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 628, 646) */
		reached[2][628] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 647, 646) */
		reached[2][647] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 252: // STATE 630 - _spin_nvr.tmp:346 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported630 = 0;
			if (verbose && !reported630)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported630 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported630 = 0;
			if (verbose && !reported630)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported630 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][630] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 253: // STATE 632 - _spin_nvr.tmp:347 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported632 = 0;
			if (verbose && !reported632)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported632 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported632 = 0;
			if (verbose && !reported632)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported632 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][632] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 254: // STATE 634 - _spin_nvr.tmp:348 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported634 = 0;
			if (verbose && !reported634)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported634 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported634 = 0;
			if (verbose && !reported634)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported634 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][634] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 255: // STATE 636 - _spin_nvr.tmp:349 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported636 = 0;
			if (verbose && !reported636)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported636 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported636 = 0;
			if (verbose && !reported636)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported636 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][636] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 256: // STATE 638 - _spin_nvr.tmp:350 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported638 = 0;
			if (verbose && !reported638)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported638 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported638 = 0;
			if (verbose && !reported638)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported638 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][638] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 257: // STATE 640 - _spin_nvr.tmp:351 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported640 = 0;
			if (verbose && !reported640)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported640 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported640 = 0;
			if (verbose && !reported640)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported640 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][640] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 258: // STATE 642 - _spin_nvr.tmp:352 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported642 = 0;
			if (verbose && !reported642)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported642 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported642 = 0;
			if (verbose && !reported642)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported642 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][642] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 259: // STATE 644 - _spin_nvr.tmp:353 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported644 = 0;
			if (verbose && !reported644)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported644 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported644 = 0;
			if (verbose && !reported644)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported644 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][644] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 260: // STATE 649 - _spin_nvr.tmp:357 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported649 = 0;
			if (verbose && !reported649)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported649 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported649 = 0;
			if (verbose && !reported649)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported649 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][649] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 261: // STATE 651 - _spin_nvr.tmp:358 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported651 = 0;
			if (verbose && !reported651)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported651 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported651 = 0;
			if (verbose && !reported651)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported651 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][651] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 262: // STATE 653 - _spin_nvr.tmp:359 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported653 = 0;
			if (verbose && !reported653)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported653 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported653 = 0;
			if (verbose && !reported653)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported653 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][653] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 263: // STATE 655 - _spin_nvr.tmp:360 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported655 = 0;
			if (verbose && !reported655)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported655 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported655 = 0;
			if (verbose && !reported655)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported655 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][655] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 264: // STATE 657 - _spin_nvr.tmp:361 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported657 = 0;
			if (verbose && !reported657)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported657 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported657 = 0;
			if (verbose && !reported657)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported657 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][657] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 265: // STATE 659 - _spin_nvr.tmp:362 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (680:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported659 = 0;
			if (verbose && !reported659)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported659 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported659 = 0;
			if (verbose && !reported659)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported659 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][659] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 660, 680) */
		reached[2][660] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 681, 680) */
		reached[2][681] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 266: // STATE 662 - _spin_nvr.tmp:363 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported662 = 0;
			if (verbose && !reported662)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported662 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported662 = 0;
			if (verbose && !reported662)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported662 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][662] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 267: // STATE 664 - _spin_nvr.tmp:364 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported664 = 0;
			if (verbose && !reported664)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported664 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported664 = 0;
			if (verbose && !reported664)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported664 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][664] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 268: // STATE 666 - _spin_nvr.tmp:365 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported666 = 0;
			if (verbose && !reported666)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported666 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported666 = 0;
			if (verbose && !reported666)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported666 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][666] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 269: // STATE 668 - _spin_nvr.tmp:366 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported668 = 0;
			if (verbose && !reported668)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported668 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported668 = 0;
			if (verbose && !reported668)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported668 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][668] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 270: // STATE 670 - _spin_nvr.tmp:367 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported670 = 0;
			if (verbose && !reported670)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported670 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported670 = 0;
			if (verbose && !reported670)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported670 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][670] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 271: // STATE 672 - _spin_nvr.tmp:368 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported672 = 0;
			if (verbose && !reported672)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported672 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported672 = 0;
			if (verbose && !reported672)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported672 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][672] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 272: // STATE 674 - _spin_nvr.tmp:369 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported674 = 0;
			if (verbose && !reported674)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported674 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported674 = 0;
			if (verbose && !reported674)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported674 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][674] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 273: // STATE 676 - _spin_nvr.tmp:370 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported676 = 0;
			if (verbose && !reported676)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported676 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported676 = 0;
			if (verbose && !reported676)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported676 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][676] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 274: // STATE 678 - _spin_nvr.tmp:371 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported678 = 0;
			if (verbose && !reported678)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported678 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported678 = 0;
			if (verbose && !reported678)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported678 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][678] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 275: // STATE 683 - _spin_nvr.tmp:375 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported683 = 0;
			if (verbose && !reported683)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported683 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported683 = 0;
			if (verbose && !reported683)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported683 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][683] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 276: // STATE 685 - _spin_nvr.tmp:376 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (692:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported685 = 0;
			if (verbose && !reported685)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported685 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported685 = 0;
			if (verbose && !reported685)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported685 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][685] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 686, 692) */
		reached[2][686] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 693, 692) */
		reached[2][693] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 277: // STATE 688 - _spin_nvr.tmp:377 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported688 = 0;
			if (verbose && !reported688)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported688 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported688 = 0;
			if (verbose && !reported688)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported688 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][688] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 278: // STATE 690 - _spin_nvr.tmp:378 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported690 = 0;
			if (verbose && !reported690)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported690 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported690 = 0;
			if (verbose && !reported690)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported690 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][690] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 279: // STATE 695 - _spin_nvr.tmp:382 - [(!((p1._p==cs)))] (700:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported695 = 0;
			if (verbose && !reported695)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported695 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported695 = 0;
			if (verbose && !reported695)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported695 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][695] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))
			continue;
		/* merge: assert(!(!((p1._p==cs))))(0, 696, 700) */
		reached[2][696] = 1;
		spin_assert( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))), " !( !((p1._p==cs)))", II, tt, t);
		/* merge: .(goto)(0, 701, 700) */
		reached[2][701] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 280: // STATE 703 - _spin_nvr.tmp:387 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported703 = 0;
			if (verbose && !reported703)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported703 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported703 = 0;
			if (verbose && !reported703)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported703 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][703] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 281: // STATE 705 - _spin_nvr.tmp:388 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (720:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported705 = 0;
			if (verbose && !reported705)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported705 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported705 = 0;
			if (verbose && !reported705)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported705 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][705] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 706, 720) */
		reached[2][706] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 721, 720) */
		reached[2][721] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 282: // STATE 708 - _spin_nvr.tmp:389 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported708 = 0;
			if (verbose && !reported708)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported708 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported708 = 0;
			if (verbose && !reported708)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported708 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][708] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 283: // STATE 710 - _spin_nvr.tmp:390 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported710 = 0;
			if (verbose && !reported710)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported710 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported710 = 0;
			if (verbose && !reported710)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported710 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][710] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 284: // STATE 712 - _spin_nvr.tmp:391 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported712 = 0;
			if (verbose && !reported712)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported712 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported712 = 0;
			if (verbose && !reported712)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported712 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][712] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 285: // STATE 714 - _spin_nvr.tmp:392 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported714 = 0;
			if (verbose && !reported714)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported714 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported714 = 0;
			if (verbose && !reported714)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported714 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][714] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 286: // STATE 716 - _spin_nvr.tmp:393 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported716 = 0;
			if (verbose && !reported716)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported716 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported716 = 0;
			if (verbose && !reported716)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported716 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][716] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 287: // STATE 718 - _spin_nvr.tmp:394 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported718 = 0;
			if (verbose && !reported718)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported718 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported718 = 0;
			if (verbose && !reported718)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported718 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][718] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 288: // STATE 723 - _spin_nvr.tmp:398 - [((!(!((p1._p==cs)))&&!((p1._p==cs))))] (732:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported723 = 0;
			if (verbose && !reported723)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported723 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported723 = 0;
			if (verbose && !reported723)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported723 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][723] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!((!(!((p1._p==cs)))&&!((p1._p==cs)))))(0, 724, 732) */
		reached[2][724] = 1;
		spin_assert( !(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !(( !( !((p1._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 733, 732) */
		reached[2][733] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 289: // STATE 726 - _spin_nvr.tmp:399 - [(!(!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported726 = 0;
			if (verbose && !reported726)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported726 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported726 = 0;
			if (verbose && !reported726)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported726 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][726] = 1;
		if (!( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 290: // STATE 728 - _spin_nvr.tmp:400 - [(!((p1._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported728 = 0;
			if (verbose && !reported728)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported728 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported728 = 0;
			if (verbose && !reported728)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported728 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][728] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 291: // STATE 735 - _spin_nvr.tmp:405 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported735 = 0;
			if (verbose && !reported735)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported735 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported735 = 0;
			if (verbose && !reported735)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported735 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][735] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 292: // STATE 737 - _spin_nvr.tmp:406 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported737 = 0;
			if (verbose && !reported737)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported737 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported737 = 0;
			if (verbose && !reported737)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported737 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][737] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 293: // STATE 739 - _spin_nvr.tmp:407 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported739 = 0;
			if (verbose && !reported739)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported739 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported739 = 0;
			if (verbose && !reported739)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported739 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][739] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 294: // STATE 741 - _spin_nvr.tmp:408 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported741 = 0;
			if (verbose && !reported741)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported741 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported741 = 0;
			if (verbose && !reported741)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported741 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][741] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 295: // STATE 743 - _spin_nvr.tmp:409 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported743 = 0;
			if (verbose && !reported743)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported743 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported743 = 0;
			if (verbose && !reported743)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported743 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][743] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 296: // STATE 745 - _spin_nvr.tmp:410 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported745 = 0;
			if (verbose && !reported745)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported745 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported745 = 0;
			if (verbose && !reported745)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported745 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][745] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 297: // STATE 747 - _spin_nvr.tmp:411 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported747 = 0;
			if (verbose && !reported747)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported747 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported747 = 0;
			if (verbose && !reported747)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported747 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][747] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 298: // STATE 749 - _spin_nvr.tmp:412 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported749 = 0;
			if (verbose && !reported749)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported749 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported749 = 0;
			if (verbose && !reported749)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported749 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][749] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 299: // STATE 751 - _spin_nvr.tmp:413 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported751 = 0;
			if (verbose && !reported751)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported751 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported751 = 0;
			if (verbose && !reported751)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported751 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][751] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 300: // STATE 753 - _spin_nvr.tmp:414 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported753 = 0;
			if (verbose && !reported753)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported753 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported753 = 0;
			if (verbose && !reported753)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported753 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][753] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 301: // STATE 755 - _spin_nvr.tmp:415 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported755 = 0;
			if (verbose && !reported755)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported755 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported755 = 0;
			if (verbose && !reported755)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported755 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][755] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 302: // STATE 757 - _spin_nvr.tmp:416 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (768:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported757 = 0;
			if (verbose && !reported757)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported757 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported757 = 0;
			if (verbose && !reported757)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported757 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][757] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 758, 768) */
		reached[2][758] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 769, 768) */
		reached[2][769] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 303: // STATE 760 - _spin_nvr.tmp:417 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported760 = 0;
			if (verbose && !reported760)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported760 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported760 = 0;
			if (verbose && !reported760)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported760 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][760] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 304: // STATE 762 - _spin_nvr.tmp:418 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported762 = 0;
			if (verbose && !reported762)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported762 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported762 = 0;
			if (verbose && !reported762)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported762 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][762] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 305: // STATE 764 - _spin_nvr.tmp:419 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported764 = 0;
			if (verbose && !reported764)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported764 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported764 = 0;
			if (verbose && !reported764)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported764 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][764] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 306: // STATE 766 - _spin_nvr.tmp:420 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported766 = 0;
			if (verbose && !reported766)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported766 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported766 = 0;
			if (verbose && !reported766)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported766 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][766] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 307: // STATE 771 - _spin_nvr.tmp:424 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported771 = 0;
			if (verbose && !reported771)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported771 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported771 = 0;
			if (verbose && !reported771)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported771 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][771] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 308: // STATE 773 - _spin_nvr.tmp:425 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported773 = 0;
			if (verbose && !reported773)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported773 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported773 = 0;
			if (verbose && !reported773)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported773 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][773] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 309: // STATE 775 - _spin_nvr.tmp:426 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported775 = 0;
			if (verbose && !reported775)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported775 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported775 = 0;
			if (verbose && !reported775)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported775 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][775] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 310: // STATE 777 - _spin_nvr.tmp:427 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported777 = 0;
			if (verbose && !reported777)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported777 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported777 = 0;
			if (verbose && !reported777)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported777 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][777] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 311: // STATE 779 - _spin_nvr.tmp:428 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported779 = 0;
			if (verbose && !reported779)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported779 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported779 = 0;
			if (verbose && !reported779)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported779 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][779] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 312: // STATE 781 - _spin_nvr.tmp:429 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported781 = 0;
			if (verbose && !reported781)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported781 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported781 = 0;
			if (verbose && !reported781)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported781 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][781] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 313: // STATE 783 - _spin_nvr.tmp:430 - [(!((p0._p==cs)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported783 = 0;
			if (verbose && !reported783)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported783 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported783 = 0;
			if (verbose && !reported783)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported783 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][783] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 314: // STATE 785 - _spin_nvr.tmp:431 - [((!((p0._p==cs))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported785 = 0;
			if (verbose && !reported785)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported785 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported785 = 0;
			if (verbose && !reported785)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported785 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][785] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 315: // STATE 787 - _spin_nvr.tmp:432 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported787 = 0;
			if (verbose && !reported787)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported787 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported787 = 0;
			if (verbose && !reported787)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported787 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][787] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 316: // STATE 789 - _spin_nvr.tmp:433 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported789 = 0;
			if (verbose && !reported789)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported789 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported789 = 0;
			if (verbose && !reported789)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported789 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][789] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 317: // STATE 791 - _spin_nvr.tmp:434 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported791 = 0;
			if (verbose && !reported791)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported791 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported791 = 0;
			if (verbose && !reported791)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported791 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][791] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 318: // STATE 793 - _spin_nvr.tmp:435 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported793 = 0;
			if (verbose && !reported793)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported793 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported793 = 0;
			if (verbose && !reported793)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported793 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][793] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 319: // STATE 795 - _spin_nvr.tmp:436 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported795 = 0;
			if (verbose && !reported795)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported795 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported795 = 0;
			if (verbose && !reported795)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported795 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][795] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 320: // STATE 797 - _spin_nvr.tmp:437 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (808:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported797 = 0;
			if (verbose && !reported797)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported797 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported797 = 0;
			if (verbose && !reported797)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported797 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][797] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		/* merge: assert(!(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs)))))(0, 798, 808) */
		reached[2][798] = 1;
		spin_assert( !((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))), " !((( !( !((p1._p==cs)))&& !((p0._p==cs)))&& !((p1._p==cs))))", II, tt, t);
		/* merge: .(goto)(0, 809, 808) */
		reached[2][809] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 321: // STATE 800 - _spin_nvr.tmp:438 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported800 = 0;
			if (verbose && !reported800)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported800 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported800 = 0;
			if (verbose && !reported800)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported800 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][800] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 322: // STATE 802 - _spin_nvr.tmp:439 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported802 = 0;
			if (verbose && !reported802)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported802 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported802 = 0;
			if (verbose && !reported802)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported802 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][802] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 323: // STATE 804 - _spin_nvr.tmp:440 - [(((!(!((p1._p==cs)))&&!((p0._p==cs)))&&!((p1._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported804 = 0;
			if (verbose && !reported804)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported804 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported804 = 0;
			if (verbose && !reported804)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported804 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][804] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))&& !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 324: // STATE 806 - _spin_nvr.tmp:441 - [((!(!((p1._p==cs)))&&!((p0._p==cs))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported806 = 0;
			if (verbose && !reported806)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported806 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported806 = 0;
			if (verbose && !reported806)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported806 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][806] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==18)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==18)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 325: // STATE 812 - _spin_nvr.tmp:445 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported812 = 0;
			if (verbose && !reported812)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported812 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported812 = 0;
			if (verbose && !reported812)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported812 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][812] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC p1 */
	case 326: // STATE 8 - minpeterson.pml:45 - [flag1 = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = ((int)now.flag1);
		now.flag1 = 1;
#ifdef VAR_RANGES
		logval("flag1", ((int)now.flag1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 327: // STATE 9 - minpeterson.pml:46 - [victim = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = now.victim;
		now.victim = 1;
#ifdef VAR_RANGES
		logval("victim", now.victim);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 328: // STATE 11 - minpeterson.pml:50 - [((flag0&&(victim==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!((((int)now.flag0)&&(now.victim==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 329: // STATE 19 - minpeterson.pml:55 - [flag1 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = ((int)now.flag1);
		now.flag1 = 0;
#ifdef VAR_RANGES
		logval("flag1", ((int)now.flag1));
#endif
		;
		_m = 3; goto P999; /* 0 */

		 /* PROC p0 */
	case 330: // STATE 8 - minpeterson.pml:24 - [flag0 = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)now.flag0);
		now.flag0 = 1;
#ifdef VAR_RANGES
		logval("flag0", ((int)now.flag0));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 331: // STATE 9 - minpeterson.pml:25 - [victim = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.victim;
		now.victim = 0;
#ifdef VAR_RANGES
		logval("victim", now.victim);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 332: // STATE 11 - minpeterson.pml:29 - [((flag1&&(victim==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((((int)now.flag1)&&(now.victim==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 333: // STATE 19 - minpeterson.pml:35 - [flag0 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((int)now.flag0);
		now.flag0 = 0;
#ifdef VAR_RANGES
		logval("flag0", ((int)now.flag0));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

