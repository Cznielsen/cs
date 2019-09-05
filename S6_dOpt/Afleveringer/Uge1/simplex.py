import scipy.optimize

# Expression coefficients
Energy = [318, 687, 138.07, 1532, 138, 3094, 400, 1507, 88]
Carb = [17, 0, 7, 58.1, 4.7, 0.7, 0.5, 78, 3.1]
Protein = [2, 19.7, 2.8, 13.2, 3.5, 0.6, 20, 8, 1.1]
Fat = [0.1, 9.7, 0.4, 6.5, 0.1, 81.5, 1.5, 1, 0.5]
Sugar = [0.8, 0, 1.7, 1, 4.7, 0, 0.5, 0.3, 3.1]
Vit_B12 = [0, 0.0019, 0, 0, 0.0048, 0.0017, 0.0034, 0, 0]
Vit_C = [26.4, 0, 121, 0, 1.3, 0, 1, 0, 11.3]
Salt = [0.6, 900, 8, 6.7, 44.3, 361, 63, 1.8, 143]



# Coefficients with energy
Minus_Energy = [-1*x for x in Energy]
Ecarb = [17*x for x in Carb]
EProtein = [17*x for x in Protein]
EFat = [38*x for x in Fat]
ESugar = [17*x for x in Sugar]

# Constraints
Carb_Lower = [0.45*x-y for x, y in zip(Energy, Ecarb)]
Carb_Upper = [-0.6*x+y for x, y in zip(Energy, Ecarb)]
Protein_Lower = [0.1*x-y for x, y in zip(Energy, EProtein)]
Protein_Upper = [-0.2*x+y for x, y in zip(Energy, EProtein)]
Fat_Lower = [0.25*x-y for x, y in zip(Energy, EFat)]
Fat_Upper = [-0.4*x+y for x, y in zip(Energy, EFat)]
Sugar_Upper = [-0.1*x+y for x, y in zip(Energy, ESugar)]
c = [1, 5.4, 2.4, 1.2, 1, 9.9, 9, 1.5, 1.234]
A = [Minus_Energy,
     Carb_Lower,
     Carb_Upper,
     Protein_Lower,
     Protein_Upper,
     Fat_Lower,
     Fat_Upper,
     Sugar_Upper,
     [-1*x for x in Salt],
     Salt,
     [-1 * x for x in Vit_B12],
     [-1 * x for x in Vit_C]]

b = [-10000, 0, 0, 0, 0, 0, 0, 0, -2800, 4900, -0.002, -75]

print(scipy.optimize.linprog(c, A, b, options={'tol': 1e-9}))
