function[L,U,P] = luFactor1(A)
%********************************************
% Harvinder Singh Virk, MECH-105, Last Edited - 26-MAR-2018, Time: 8:35 AM.
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
    error('Please enter a SQUARE matrix')
end
U = A; % Making matrix U equal to matrix A.
P = eye(size(A));% Creating and identity matrix to store values of P.
L = eye(size(A));% Creating L matrix as identity matrix so we can store the values later on by using forward elimination.
   for j = (1:n-1) % creating the n number of columns.
       for i = (j+1:n) % creating n number of rows.
%           rownum = j; % renaming rownum.
            for rownum = j:n
                [~,themax] = max(abs(U(j:n,j)));%finding the maximum value in the column.
                
                %finding where the max occurs in the matrix for the columns.
               if abs(U(rownum,j)) == themax
                 t = U(j,j:n); % 
                 e = U(rownum,j:n);
                 U(j,j:n) = e;
                 U(rownum,j:n) = t;
                 kp = P(j,:);
                 hp = P(rownum, :);
                 P(j,:) = hp;
                 P(rownum,:) = kp;
                 c = (U(i,j))/(U(j,j));
                 hv = c.*(U(j,:));
                 U(i,:) = U(i,:)-hv;
                 L(i,j) = c;
             else
                 rownum = rownum+1;
               end
            end
       end
   end
end

              
                   