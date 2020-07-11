import Base: show, string
export string3


function pstring(p::SimplePolynomial)
    nterms = count((x) -> (x!=0), p.data)
    if nterms <= 1
        return string(p)
    end
    return "(" * string(p) * ")"
end


function string(f::SimpleRationalFunction)
    return pstring(f.num) * " / " * pstring(f.den)
end





function show(io::IO, f::SimpleRationalFunction)
    print(io,string(f))
end


function string3(f::SimpleRationalFunction)
    top = string(numerator(f))
    bot = string(denominator(f))

    n1 = length(top)
    n2 = length(bot)
    n = max(n1,n2)

    pad1 = 0
    pad2 = 0

    if n1 < n
        pad1 = div(n-n1,2)
    else
        pad2 = div(n-n2,2)
    end

    line1 = " "^pad1 * top
    line2 = "-"^n
    line3 = " "^pad2 * bot
    NL = "\n"

    return line1 * NL * line2 * NL * line3
end
