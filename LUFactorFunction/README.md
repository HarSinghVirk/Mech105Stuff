# LU Factorization:
## The LU factorization is function created to decompose any A matrix to lower and upper matrix.

## The lu function expresses a matrix A as the product of two essentially
triangular matrices, one of them a permutation of a lower triangular
matrix and the other an upper triangular matrix. 
The factorization is often called the LU, or sometimes the LR, factorization. A can be rectangular.}

# Inputs:
* A - coefficient matrix

# Outputs:
* L - lower triangular matrix
* U - upper triangular matrix
* P - the pivot matrix

## The if statements used in this algorithm are checking the eligible errors.
1) If m is not equal to n then there is an error that it's not a square matrix. In order to decompose the matrix. It should be a square matrix.

2) If all the numbers inside the matrix are zero. The function can't decompose the matrix.

# Initializing:
1) Making U = A. The upper triangular matrix is equal to the matrix that is entered by the user.
2) Initializing the Pivot matrix P as the identity matrix. The command for identity matrix in Matlab is eye(A). A is a variable.

## The for loops are used to make rows and columns.
[~,I] function is used to find the maximum. Of indices and storing it in the vector I.

# Swapping rows:
Row swapping is done for matrix U and values are stored in vector f.
Row swapping is also performed in matrix P because it's the pivot matrix. The row swapping for pivot matrix is done whenever there is row swapping for U. 
For L matrix the value that is multiplied with first row to eliminate the second row. The values is obtained by gauss elimination method. It is stored at the same place where the row is eliminated. Only the value obtained by gauss elimination is swapped in the swapping process not the whole row.
## The desired answer is calculated by the formulas used in the algorithm.
## P.S This function requires only one input. The matrix should be a square matrix.
