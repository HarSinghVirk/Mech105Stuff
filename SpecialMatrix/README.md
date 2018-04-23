# Specialmatrix:
## 1) Funtion returns the n x m matrix that follows the following criteria
 - value of each element in the first row is the number of the column. 
 - value of each element in the first column is the number of the row.
 - rest of the elements each has a value equal to the sum of the element above it and element to the left.
 - The function must return a sensible error if the user does not input exactly two
arguments.
 - The function should be well commented.

# Inputs:
n = number of rows.
m = number of columns.

# Outputs:
[D] the function that gives the result for n x m matrix.

# Empty array:
I created and empty array called D to save the matrix.

# If statements:
The number of arguments should be two  otherwise Matlab will throw and error that it requires two inputs.

# For statement:
In for statement  k is nth row vector and h is nth column vector.
If value of k is equal to 1 then Matlab will display value of h and if h is equal to 1 then it will show value of k. Otherwise it will use the following formula to create the special matrix D(kWh) = D(kWh-1)+D(k-1,h).
P.S tic and toc are used to calculate time. How long does it take for a function to run.
