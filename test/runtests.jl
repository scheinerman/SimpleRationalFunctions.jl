using Test, SimplePolynomials, SimpleRationalFunctions

x = SimplePolynomial(0,1)

f = (1-x)/(1-x^2)

@test f(1) == 1//2
