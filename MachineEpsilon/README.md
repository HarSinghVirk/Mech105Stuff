# Machine Epsilon:-

## Machine epsilon can be thought of as the smallest number that when added to one gives a number greater than 1.

## Inputs:
* epsilon = 1.

## Output:
*The function epsilon will generate result(2.2204e-16) once machine epsilon is  typed
in the command window. 

# Process (How it Works):
This algorithm returns the value of machine epsilon to the user. Machine epsilon is the maximum relative error of the chosen rounding procedure. While loop is used for this particular algorithm. 
* The summation of 1 + epsilon is less than equal 1 than evaluate the function.
* If the above statement is true. Then it will exit the loop using the inbuilt break function.
* If the number after summation was greater than one than it is divided by 2.

### Final answer is calculate by using the following formula when one of the above condition is met.
epsilon = 2*epsilon1

### P.S - While loops are dangerous to use. Only use while loop when your are sure how they will work. It may crash your computer also. They can also run forever(infinitely).










