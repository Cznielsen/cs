import numpy as np
import timeit  # Useful for calculating average time over randomized examples
import time  # Used for time since epoch to calculate for single example.
import scipy.optimize  # used for comparing results

from fractions import Fraction
from enum import Enum


def Example1(): return np.array([5,4,3]),np.array([[2,3,1],[4,1,2],[3,4,2]]),np.array([5,11,8])
def Example2(): return np.array([-2,-1]),np.array([[-1,1],[-1,-2],[0,1]]),np.array([-1,-2,1])
def IPexample(): return np.array([5,2]),np.array([[3,1],[2,5]]),np.array([7,5])
def Exercise2_5(): return np.array([1,3]),np.array([[-1,-1],[-1,1],[1,2]]),np.array([-3,-1,4])
def Exercise2_6(): return np.array([1,3]),np.array([[-1,-1],[-1,1],[1,2]]),np.array([-3,-1,2])
def Exercise2_7(): return np.array([1,3]),np.array([[-1,-1],[-1,1],[-1,2]]),np.array([-3,-1,2])
def RandomLP(n,m,sigma=10): return np.round(sigma*np.random.randn(n)),np.round(sigma*np.random.randn(m,n)),np.round(sigma*np.abs(np.random.randn(m)))

class Dictionary:
    # Simplex dictionary as defined by Vanderbei
    #
    # C is a (m+1)x(n+1) NumPy array that stores the coefficients of
    # the dictionary
    #
    # dtype is the type of the entries of the dictionary. It is
    # supposed to be one of the native Python types 'int' or
    # 'Fraction' or a Numpy type such as np.float64.
    #
    # Variables are indexed from 0 to n+m. Variable 0 is the objective
    # z. Variables 1 to n are the original variables. Variables n+1 to
    # n+m are the slack variables. An exception is for an auxillary
    # dictionary where variable n+1 is the auxillary variable and
    # variables n+2 to n+m+1 are the slack variables.
    #
    # B and N are arrays that contain the indices of the basic and
    # nonbasic variables.
    #
    # varnames is an array of the names of the variables.
    
    def __init__(self,c,A,b,dtype=Fraction):
        # Initializes the dictionary based on linear program in
        # standard form given by vectors and matrices c,A,b.
        #
        # If c is None it generates the auxillary dictionary for the
        # two-phase simplex algorithm
        if dtype == int:
            self.detB=self.lastpivot=1
        m,n = A.shape
        self.dtype=dtype
        if dtype in [int,Fraction]:
            dtype=object
            if c is not None:
                c=np.array(c,np.object)
            A=np.array(A,np.object)
            b=np.array(b,np.object)
            dtype=object
        self.C = np.empty([m+1,n+1+(c is None)],dtype=dtype)
        self.C[0,0]=self.dtype(0)
        if c is None:
            self.C[0,1:]=self.dtype(0)
            self.C[0,n+1]=self.dtype(-1)
            self.C[1:,n+1]=self.dtype(1)
        else:
            for j in range(0,n):
                self.C[0,j+1]=self.dtype(c[j])
        for i in range(0,m):
            self.C[i+1,0]=self.dtype(b[i])
            for j in range(0,n):
                self.C[i+1,j+1]=self.dtype(-A[i,j])
        self.N = np.array(range(1,n+1+(c is None)))
        self.B = np.array(range(n+1+(c is None),n+1+(c is None)+m))
        self.varnames=np.empty(n+1+(c is None)+m,dtype=object)
        self.varnames[0]='z'
        for i in range(1,n+1):
            self.varnames[i]='x{}'.format(i)
        if c is None:
            self.varnames[n+1]='x0'
        for i in range(n+1,n+m+1):
            self.varnames[i+(c is None)]='x{}'.format(i)

    def __str__(self):
        # String representation of the dictionary in equation form as
        # used in Vanderbei.
        m,n = self.C.shape
        varlen = len(max(self.varnames,key=len))
        coeflen = 0
        for i in range(0,m):
            coeflen=max(coeflen,len(str(self.C[i,0])))
            for j in range(1,n):
                coeflen=max(coeflen,len(str(abs(self.C[i,j]))))
        tmp=[]
        if self.dtype==int and self.detB!=1:
            tmp.append(str(self.detB))
            tmp.append('*')
        tmp.append('{} = '.format(self.varnames[0]).rjust(varlen+3))
        tmp.append(str(self.C[0,0]).rjust(coeflen))
        for j in range(0,n-1):
            tmp.append(' + ' if self.C[0,j+1]>0 else ' - ')
            tmp.append(str(abs(self.C[0,j+1])).rjust(coeflen))
            tmp.append('*')
            tmp.append('{}'.format(self.varnames[self.N[j]]).rjust(varlen))
        for i in range(0,m-1):
            tmp.append('\n')
            if self.dtype==int and self.detB!=1:
                tmp.append(str(self.detB))
                tmp.append('*')
            tmp.append('{} = '.format(self.varnames[self.B[i]]).rjust(varlen+3))
            tmp.append(str(self.C[i+1,0]).rjust(coeflen))
            for j in range(0,n-1):
                tmp.append(' + ' if self.C[i+1,j+1]>0 else ' - ')
                tmp.append(str(abs(self.C[i+1,j+1])).rjust(coeflen))
                tmp.append('*')
                tmp.append('{}'.format(self.varnames[self.N[j]]).rjust(varlen))
        return ''.join(tmp)

    def BasicSolution(self):
        # Extracts the basic solution defined by a dictionary D
        m,n = self.C.shape
        if self.dtype==int:
            x_dtype=Fraction
        else:
            x_dtype=self.dtype
        x = np.empty(n-1,x_dtype)
        x[:] = x_dtype(0)
        for i in range (0,m-1):
            if self.B[i]<n:
                if self.dtype==int:
                    x[self.B[i]-1]=Fraction(self.C[i+1,0],self.detB)
                else:
                    x[self.B[i]-1]=self.C[i+1,0]
        return x
    
    def Value(self):
        # Extracts the value of the basic solution defined by a dictionary D
        if self.dtype==int:
            return Fraction(self.C[0,0],self.detB)
        else:
            return self.C[0,0]

    def pivot(self,l,k):
        # Pivot Dictionary with B[l] leaving and N[k] entering
        # Performs integer pivoting if self.dtype==int

        if self.dtype == int:
            pass
        else:
            k_coefficient = -1 * self.C[l + 1, k + 1]  # Saves the coefficient to use when calculating the row operations

            orig_row = (self.C[l + 1, :]).copy()
            orig_backup = (self.C[l + 1, :] / k_coefficient).copy()  # Saves the original row to be inserted in the end

            pivot_column = []

            for i in range(self.C.shape[0]):  # Iterate over the number of rows in C
                temp = self.C[i, k + 1] / k_coefficient
                temp *= -1

                if i == l + 1:  # Hacky solution for inserting the column of the current non-basic variable.
                    pivot_column.append(1 / (-1 * k_coefficient))
                else:
                    pivot_column.append(temp)

                self.C[i, :] = self.C[i, :] - temp * orig_row  # Do elementary row operation

            self.C[l + 1, :] = orig_backup  # Reinsert original row
            self.C[:, k + 1] = pivot_column
            self.B[l], self.N[k] = self.N[k], self.B[l]


class LPResult(Enum):
    Optimal,Infeasible,Unbounded = range(3)

def Bland(D,eps):
    # Assumes a feasible dictionary D
    #
    # eps is such that numbers in the closed interval [-eps,eps] are
    # to be treated as if they were 0
    #
    # Returns l and k such that
    # k is None if D is Optimal
    # Otherwise D.N[k] is entering variable
    # l is None if D is Unbounded
    # Otherwise D.B[l] is a leaving variable
    
    l=k=None
    obj_row = D.C[0, 1:]  # The row of the objective function EXCLUDING the first element.

    if np.max(obj_row) <= 0:  # if all variables in obj_fun are positive, report optimal
        k = None
    else:
        k = next(x for x, y in enumerate(obj_row) if y > 0) + 1  # returns the first positive element in objective function (adds one because first column is cut out)
        ratio_list = []
        for i in range(D.C[1:, :].shape[0]):  # iterate over the rows in D excluding the first row (the obj_fun)

            if D.C[i+1, 0] == 0:  # special cases if denominator is 0
                if D.C[i+1, k] == 0:
                    ratio_list.append(0)
                elif D.C[i+1, k] > 0:
                    ratio_list.append(float('-inf'))
                else:
                    ratio_list.append(float('inf'))
            else:
                ratio_list.append(-1*D.C[i+1, k] / D.C[i+1, 0])  # list of ratios (remember to negate numerator)

        if max(ratio_list) <= 0:  # If all ratios are non-positive, report unbounded
            l = None
        else:
            temp = max(ratio_list)
            l = next(x for x, y in enumerate(ratio_list) if y == temp) + 1  # return l which has the biggest ratio

    return l, k


def LPSolve(c,A,b,dtype=Fraction,pivotrule=lambda D: Bland(D,eps=0),verbose=False):
    # Simplex algorithm
    #    
    # Input is LP in standard form given by vectors and matrices
    # c,A,b..
    #
    # pivotrule is a rule used for pivoting. cycling is prevented by
    # switching to Bland's rule as needed
    #
    # If verbose is True it prints out the sequence of pivot
    # operations performed
    #
    # If LP is infeasible the return value is LPResult.Infeasible,None
    #
    # If LP is unbounded the return value is LPResult.Unbounded,None
    #
    # If LP has an optimal solution the return value is
    # LPResult.Optimal,D, where D is an optimal dictionary

    if min(b) < 0:
        D = Dictionary(None, A, b, dtype)
        print(D)
        temp = min(D.C[1:, 0])
        l = next(x for x, y in enumerate(D.C[1:, 0]) if y == temp)  # return l which is most infeasible
        D.pivot(l, len(D.C[0, :])-2)  # pivot the most infeasible with the last element in that row (i.e: x_0)
        while True:
            l, k = Bland(D, 0)
            if (k is None) and (D.C[0, 0] == 0):
                b = D.C[1:, 0]
                A = D.C[1:, 2:]

                D = Dictionary(c, A, b, dtype)
                while True:
                    l, k = Bland(D, 0)
                    if k is None:
                        return LPResult.Optimal, D
                    elif l is None:
                        print("Linear Program is Unbounded")
                        return LPResult.Unbounded, None
                    else:
                        D.pivot(l - 1, k - 1)

            elif (k is None) and (D.C[0, 0] != 0):
                print("Infeasible")
                return LPResult.Infeasible, None
            elif l is None:
                print("Auxillary Program is Unbounded")
                return LPResult.Unbounded, None
            else:
                D.pivot(l - 1, k - 1)
    else:
        D = Dictionary(c, A, b, dtype)
        while True:
            l, k = Bland(D, 0)
            if k is None:
                return LPResult.Optimal, D
            elif l is None:
                print("Linear Program is Unbounded")
                return LPResult.Unbounded, None
            else:
                D.pivot(l - 1, k - 1)

"""
# Time testing example
c, A, b = RandomLP(30, 30)

pre_time = time.time()
Res, D = LPSolve(c, A, b, Fraction)
post_time = time.time()
time_res = (post_time - pre_time) * 1000
print("Random Example with Fraction:")
print(D)
print("Time spent:", time_res, "ms")
print()

pre_time_float = time.time()
Res, D = LPSolve(c, A, b, np.float64)
post_time_float = time.time()
time_res_float = (post_time_float - pre_time_float) * 1000
print("Random Example with Float:")
print(D)
print("Time spent:", time_res, "ms")
print()

print("Random Example with Scipy")
pre_time_scipy = time.time()
print(scipy.optimize.linprog(-c, A, b, options={'bland': True}))
post_time_scipy = time.time()
time_res_scipy = (post_time_scipy - pre_time_scipy) * 1000
print("Scipy Time spent:", time_res_scipy, "ms")
print()

print("Time comparison:\n\nFractions:", time_res, "ms\nFloat:", time_res_float, "ms\nScipy:", time_res_scipy, "ms")


# Example 1
c,A,b = Example1()
D=Dictionary(c,A,b)
print('Example 1 with Fraction')
print('Initial dictionary:')
print(D)
print('x1 is entering and x4 leaving:')
D.pivot(0,0)
print(D)
print('x3 is entering and x6 leaving:')
D.pivot(2,2)
print(D)
print()

D=Dictionary(c,A,b,np.float64)
print('Example 1 with np.float64')
print('Initial dictionary:')
print(D)
print('x1 is entering and x4 leaving:')
D.pivot(0,0)
print(D)
print('x3 is entering and x6 leaving:')
D.pivot(2,2)
print(D)
print()

# Example 2
c,A,b = Example2()
print('Example 2')
print('Auxillary dictionary')
D=Dictionary(None,A,b)
print(D)
print('x0 is entering and x4 leaving:')
D.pivot(1,2)
print(D)
print('x2 is entering and x3 leaving:')
D.pivot(0,1)
print(D)
print('x1 is entering and x0 leaving:')
D.pivot(1,0)
print(D)
print()

# Solve Example 1 using LPSolve
c,A,b = Example1()
print('LPSolve Example 1:')
res,D=LPSolve(c,A,b, Fraction)
print(res)
print(D)
print()

"""
# Solve Example 2 using LPSolve
c,A,b = Example2()
print('LPSolve Example 2:')
res,D=LPSolve(c,A,b)
print(res)
print(D)
print()
"""

# Solve Exercise 2.5 using LPSolve
c,A,b = Exercise2_5()
print('LPSolve Exercise 2.5:')
res,D=LPSolve(c,A,b)
print(res)
print(D)
print()

# Solve Exercise 2.6 using LPSolve
c,A,b = Exercise2_6()
print('LPSolve Exercise 2.6:')
res,D=LPSolve(c,A,b)
print(res)
print(D)
print()

# Solve Exercise 2.7 using LPSolve
c,A,b = Exercise2_7()
print('LPSolve Exercise 2.7:')
res,D=LPSolve(c,A,b)
print(res)
print(D)
print()

#Integer pivoting
c,A,b=Example1()
D=Dictionary(c,A,b,int)
print('Example 1 with int')
print('Initial dictionary:')
print(D)
print('x1 is entering and x4 leaving:')
D.pivot(0,0)
print(D)
print('x3 is entering and x6 leaving:')
D.pivot(2,2)
print(D)
print()

c,A,b = IPexample()
D=Dictionary(c,A,b,int)
print('Integer pivoting example from lecture')
print('Initial dictionary:')
print(D)
print('x1 is entering and x3 leaving:')
D.pivot(0,0)
print(D)
print('x2 is entering and x4 leaving:')
D.pivot(1,1)
print(D)

"""