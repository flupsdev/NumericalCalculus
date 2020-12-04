
# Math Operations :

5 + 5 # Sum like in other languages.

2 * 5 # Product like in other languages.

10 / 5 # Division like in other languages.

2 ^ 3 # Exponential like in other languages.

sqrt(25) # Square root of a numer like in other languages.

exp(3) # Number e = 2,7182818284590452353602874... ^ 3.

log(3) # Log in base e = 2,7182818284590452353602874... 

log10(10) # Log in base 10.

sin(π) 

cos(π) 

# Linear Algebra shit: 
using LinearAlgebra

v = [ 1.0; 2.0; 3.0 ] # creating a vector of float values.

# We can make some Operations with this vector.

v + v

v * 2

w = [ 3.0; -1.0; 2.0 ]

v + w 

2 * v + 3 * w 

A = [ 5.0 4.0 -2.0; 1.0 2.0 3.0 ] # Creating a 2x3 matrix.

A * v # Multipling a Matrix with a vector.

A' # transpose matrix.

B = ones(2,3) # Creating a 2x3 matrix with only ones.

A + im * B # We can also add imaginary values to matrix, Julia supports it.

dot(v,w) # Dot Product of v and w vectors.

norm(v) # Norm of vector v 


# Functions:

# Using all we already know using programming, we can do a baskhara function.
function baskhara(a, b, c)
    Δ = b^2 - 4 * a * c 
    if Δ > 0
        return (-b + sqrt(Δ)) / 2  , (b + sqrt(Δ)) / 2
    elseif Δ == 0 
        return -b / 2
    else 
        return println("Essa função possui raízes complexas, não é nosso objetivo com a baskhara.")
    end
end

# Here a simple derivate function.
function derivate(f, x; h = 1e-8)
    (f( x + h ) - f( x )) / h    
end

# Here we use the derivate passing the function we want to derivate in parameter.
derivate( x -> x^2 + 1, 2.0)

function factorial(n :: Int)  
    if n < 0
        error("Não existe fatorial para n < 0")
    end
    resultado = 1
    for i = 1:n
        resultado = resultado + i
    end 
    return resultado  
end

# If we use "." in Math Operations we do like a for each in the "list" like below 

v .+ 1 

v .* 2

v ./ w 

v .^ 3

exp.(v)

derivate.( x -> x^2 + 1, 2.0)



# Ranges and compact lists

collect(3:100) # create a list of numbers starting in 3 and finishing on 100

collect(5:0.5:10) # create a list of numbers starting in 3 and going 0.5 by 0.5 to 10 

