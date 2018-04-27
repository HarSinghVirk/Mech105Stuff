# Heun's Method:

Heun's method is based on the Euler's method. The Euler's method is not accurate. This method works on two equations called predictor and corrector.
The predictor predicts the value and corrector tries to correct it by estimating the value. The first value slope left is always calculated by plugging values into the equation. The finding new y by plugging it into the predictor equation and then finding the slope right using the same y value but increasing the value of t according to the step size. The the slope right and left are averaged and multiplied by 0.5. y initial is add to that value. This is are corrector equation.

# Inputs: 6 
dydt - Differential Equation.
tspan - The range of values of t.
y0 - The initial value of y or initial condition to start. 
h = Step Size.
es - Estimated error.
maxit - Maximum number of iterations.

# Outputs: 2
t - t-variable.
y - y-variable.

# If statements: Error Checking:-
The if statement at the starting of the code are for checking errors that can occur such as if user put less than 4 arguments. Matlab will display an error to the user. Also initializing the values as the input requires six arguements.

# Initializing Variables:
The tspan is the values(x-direction). These are created by the input h given by the user. But what if the step size didn't work for the last value. This code also take that fact into consideration that if the array built by the step size is below the given value by the user. The code will take that end value and stick it to the end of the t array that it created by using the provided step size. It is explained inside the code. For example, read the block of code from line 39 to 41. 

`h`- The difference between the points is calculated by using inbuilt diff function in Matlab.

# Loops: Nested Loops:-
Two `for` loops are used in this function. The `first for loop` is to run the estimated slope at the given condition and then finding the new y value using the Euler's Method. 
The `second for loop` is used to run the iteration using predictor and corrector equation. These equation are for `Heun's Method`. The new slope is solved using the new t and the old  y value calculated using Euler's formula. A new y value is calculated by averaging the old and new slopes, multiplying with the step size(h) and adding the y initial.
The value of y(i) will change whenever the first loop will run. The second loop iteration are just calculating how close is the slope at the point t. The equations will be iterated again and again until the approximate error (ea) is less then es.

# Graph:
The graph of the function will be produced with x and y labels. Users can change there title according to there function. 

# Time:
The time that took to evaluate the function is calculated by using inbuilt tic and toc function.