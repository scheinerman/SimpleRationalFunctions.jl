using Test, SimplePolynomials, SimpleRationalFunctions

x = getx()

f = (1-x)/(1-x^2)

@test f(1) == 1//2
g = inv(f)
@test g(1) == 2
@test f*g == 1
@test f-f == 0
@test -(f-g) == g-f
@test f/g == f^2
@test f^0 == 1

p = x + 2x -im*x^3
q = 3x+5x^6
f = p//q

@test f^5 == p^5 / q^5
@test f^(-2) == q^2/p^2

f = (1-x^2)/(3+x^3)

@test f' == (-6*x - 3*x^2 + x^4) / (9 + 6*x^3 + x^6)
@test f'(1) == -1//2


f = (x-3x^2)/(1+x)
@test string(f) == "(x - 3*x^2) / (1 + x)"
