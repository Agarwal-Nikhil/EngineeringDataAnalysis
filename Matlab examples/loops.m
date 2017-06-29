clc;
clear all;

% Allocate Matrix
k = 5;
A1 = zeros(k);
% Loop over all columns and all rows => nested loops:
for i = 1:k
    for j=1:k
        A1(i,j)=i+j;
    end
end
% 
% % For loop with index from one to 10 with steps of 2: 
for i=1:2:10
    A2(:,i)=1;
end
% 
% 
A3=[1 1 1 1 1];
% % For loop with index taking values in a defined vector: 
for n=[1 3 5]
    A3(:,n)=0;
end
% % % 
% % Iterating over all elements in a vector:
v = zeros(9,1);
ii = 1;
while ii < 10
    v(ii) = ii^2;
    ii = ii+1;
end

% % One further alternative to create the matrix A, this time with while
% % loop:
% o = 1;
% while o <= k
%     j = 1;
%     while j <= k
%         A5(o,j) = o+j;    % o iterates over all rows and j over all columns
%         j = j+1;
%     end
%     o = o+1;
% end



        