clc;
clear all;
%
k = 5;
A = ones(k);
% Loop through the matrix
for i = 1:k
   for j = 1:k
       
      if i == j
         A(i,j) = 2;            % elements on the diagonal shall be equal 2;
      
      elseif or(i-j==1,j-i==1)  % elements next to the diagonal shall be equal -1;
         A(i,j) = -1;
     
      else
         A(i,j) = 0;            % all other elements shall be zero;
      end

   end
end



    


