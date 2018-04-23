function[L,U,P] = luFactor(A)
%********************************************
% Harvinder Singh Virk, MECH-105, Last Edited - 26-MAR-2018, Time: 10:10 AM.
%********************************************
% { The lu function expresses a matrix A as the product of two essentially
% triangular matrices, one of them a permutation of a lower triangular
% matrix and the other an upper triangular matrix. 
% The factorization is often called the LU, or sometimes the LR, factorization. A can be rectangular.}
% *******************************************
%Inputs:
% A - coefficient matrix
% *******************************************
% Outputs:
% L - lower triangular matrix
% U - upper triangular matrix
% P - the pivot matrix
% *******************************************
[m,n] = size(A);
if m~=n
    error('Please enter a SQUARE matrix') % Can only evaluate if matrix is a square matrix.
end
if A == zeros(m,n)
    error('Can not evaluate this matrix') % Can't evaluate a zero matrix.
end

U = A; % Making matrix U equal to matrix A.
P = eye(size(A));% Creating and identity matrix to store values of P.
L = eye(size(A));% Creating L matrix as identity matrix so we can store the values later on by using forward elimination.
  for j = (1:n-1) % Creating the n number of columns.
      for i = (j+1:n) % Creating n number of rows.
        % Pivoting
        [~,I] = max(abs(U(j:n,j))); % Finding the indices of the maximum values of A and returning them in output vector I.
        I = I+(j-1); % storing the value of maximum value and indexing it. I is the same size as M. If the largest element occurs more than once, then I contains the index to the first occurrence of the value. Decreasing the I vector everytime it moves to the next column. 
        
        % Swapping and storing values in L matrix.
        f = L(j, 1:j-1); % Setting up the L matrix and storing the values after performing the division.
        L(j, 1:j-1) = L(I, 1:j-1); % Creating an array to store values of L matrix.
        L(I, 1:j-1) = f; % Storing values.
        
        % Pivoting U matrix and eliminating the values using Gauss elimination method.
        f = U(j,j:n); % Creating an array to store values of U matrix.
        U(j,j:n) = U(I,j:n); % Storing the rows with the highest value in the column.
        U(I,j:n) = f;% Storing the row with the largest value. 
        
        % Pivoting the P matrix. Swapping the rows also based on swapping done for U matrix.
        f = P(j,:);
        P1=P(I,:);% Changing the P matrix according to the U matrix swapping.
        P(j,:) = P1;% Swapping the rows in P matrix and storing the values.
        P(I,:) = f;% Storing the swapped values.
        
        % Eliminating the rows.
        L(j,j) =1; 
        c = U(i,j)/U(j,j);% Dividing the desire number which we want to make zero with the highest number in that column.
        L(i,j) = c;% Setting that constant equal to L matrix.
        U(i,:) = U(i,:)-(c.*U(j,:));% Subtracting the desired row with the pivoted row multiplied with constant.
      end
  end
end
