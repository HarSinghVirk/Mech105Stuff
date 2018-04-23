# Simpson's Rule:
Simpson's 1/3 rule is an extension of Trapezoidal rule where the integrand is approximated by a second order polynomial. The trapezoidal rule was based on approximating the integrand by a first order polynomial, and then integrating the polynomial over interval of integration.
Numerically evaluates the integral of the vector of function values y with respect to x.

# Input:
1) x - Values of x-dimension.
2) y - The function which is being evaluated.
 
# Output:
1) I - Integral of the function over the x and y limit.

# If statements: Error elimination
1) The length of x shouldn't be equal to length of y. If they are equal then it would display an error.
 2) The diff function is the inbuilt function in Matlab and is used to check equal spacing between points. The difference between two points should be same thats why I used max(diff) - min(diff) which should result in zero. The computer calculated each bit in mantissa and resulted in an error that the numbers are not same. Because of this error I have to initialize if the values are greater than or equal to 10^-15 than it should produce and error message.
If the values in the array are less than zero then min(diff) will display error. Error will say to user that values aren't in order or sequence. 

# Main Algorithm:
After error checking I created a variable k. Inbuilt Length function is used to make an array of x.
Odd number is checked by dividing k/2.
If the numbers are odd then trapezoid rule for integration is used for the last interval.

 If the numbers are odd then Simpson's 1/3 rd rule is used and trapezoid rule is used for last interval and values are added out of the loop.
 If the values are even Simpson's 1/3rd rule is used. Every time the loop runs it adds the previous value until it reach to the desired value.

 P.S Simpson's 1/3rd rule and trapezoid rule combined is known as Simpson's composite rule.
