# Falseposition Function:
It locates the root by joining f(xl) and f(xu) with a straight line. The intersection of this line with x-axis represents an improved estimate of the root.

# Input:
1) func - the function being evaluated 
2) xl - the lower guess
3) xu - the upper guess
4) esmax - the desired relative error (should default to 0.0001%)
5) itermax - the number of iterations desired (should default to 200)

# Outputs:
1) root - the estimated root location
2) fx - the function evaluated at the root location 
3) ea - the approximate relative error 
4) iter - how many iterations were performed

# If statements:
The if statements is used to check errors for the algorithm. There should be alt least five inputs provide by the user in order to make this algorithm work. If number of arguments are only three then the initialized values are use used for the other two values.
If number of arguments is four then one initialized value is used.
If all the five inputs are given by the users then there is no initialized values used by Matlab.

# Error checking using if statements:
If the value of y(upper)*y(lower) is greater than equal zero. Matlab will display an error  that one value should be positive and other one should be negative.
The second line is checking for maximum error if the maximum error is outside the limits of 0 to 100 then an error will be displayed.
The last error is that iterations can't be less then zero.

# Main Algorithm: Initializing the values:-
The false position formula is used to find the root between two brackets/limits.
I used formula to find first approximate relative error. User can also input value 100 instead or whatever value preferred by the user.
Then I evaluated the function at the root location.

# For loop to evaluate the function:
The same formulas are used in the for loop to evaluate the function to find the roots. This is a continuous process. So, for loop is used to run again and again until desired value is obtained.
The function is well commented. Please check the .m file for more details for the for loop.
P.S This function is based on the false position method describe in the book called Applied Numerical methods with MATLAB for engineers and scientists by Steven Chapra.