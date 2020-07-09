# SimpleRationalFunctions


[![Build Status](https://travis-ci.org/scheinerman/SimpleRationalFunctions.jl.svg?branch=master)](https://travis-ci.org/scheinerman/SimpleRationalFunctions.jl)

[![Coverage Status](https://coveralls.io/repos/scheinerman/SimpleRationalFunctions.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/scheinerman/SimpleRationalFunctions.jl?branch=master)

[![codecov.io](http://codecov.io/github/scheinerman/SimpleRationalFunctions.jl/coverage.svg?branch=master)](http://codecov.io/github/scheinerman/SimpleRationalFunctions.jl?branch=master)

The `SimpleRationalFunctions` module extends the `SimplePolynomials` module
to include fractions whose numerator and denominator are polynomials.

## Construction

The core constructor is `SimpleRationalFunction(p,q)` where `p` and `q`
are `SimplePolynomials`, but one can also simply calculate `p/q` or, equivalently,
`p//q`.


## To do

* Exponeniation by nonnegative integer.
