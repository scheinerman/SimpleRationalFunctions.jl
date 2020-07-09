# SimpleRationalFunctions


[![Build Status](https://travis-ci.org/scheinerman/SimpleRationalFunctions.jl.svg?branch=master)](https://travis-ci.org/scheinerman/SimpleRationalFunctions.jl)

[![Coverage Status](https://coveralls.io/repos/scheinerman/SimpleRationalFunctions.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/scheinerman/SimpleRationalFunctions.jl?branch=master)

[![codecov.io](http://codecov.io/github/scheinerman/SimpleRationalFunctions.jl/coverage.svg?branch=master)](http://codecov.io/github/scheinerman/SimpleRationalFunctions.jl?branch=master)

The `SimpleRationalFunctions` module extends the `SimplePolynomials` module
to include fractions whose numerator and denominator are polynomials.
We strongly recommend loading both packages.

See the `README` file for `SimplePolynomials` to begin.

## Construction

The core constructor is `SimpleRationalFunction(p,q)` where `p` and `q`
are `SimplePolynomials`, but one can also simply calculate `p/q` or, equivalently,
`p//q`.
```
julia> using SimplePolynomials, SimpleRationalFunctions

julia> x = getx()
x

julia> f = (x-1)/(x^2-1)
(1) / (1 + x)
```
Notice that the common factor of `x-1` is removed. In general,
rational functions are in reduced form and the denominator is
a monic polynomial.

## Operations

The standard operations (addition, subtraction, multiplication, division,
  and exponentiation by a nonnegative integer) are all supported.

Evaluation of a `SimpleRationalFunction` uses the standard notation:
```
julia> f = (x^2-3)/(1-x)
(3 - x^2) / (-1 + x)

julia> f(4)
-13//3

julia> f(x-3)
(-6 + 6*x - x^2) / (-4 + x)
```

The functions `numerator` and `denominator` may be applied with
the obvious results.
```
julia> numerator(f)
3 - x^2

julia> denominator(f)
-1 + x
```
