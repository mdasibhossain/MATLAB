clc;clear all;
%cost matrix
C=[3 5 7 6;2 5 8 2;3 6 9 2];
%supply
supply=[50 75 25];
%Demand
Demand=[20 20 50 60];
[m,n]=size(C);
%Initialization
X=zeros(m,n);
i=1;
j=1;
while i<=m && j<=n
    x=min(supply(i),Demand(j));
    %allocate
    X(i,j)=x;
    %Update supply & Demand
    supply(i)=supply(i)-x;
    Demand(j)=Demand(j)-x;
    % Move to next row and col
    if supply(i)==0
        i=i+1;
    elseif Demand(j)==0
            j=j+1;
        
    end
end
disp("Allocation matrix")
disp(X)
total_cost=sum(sum(C.*X));
disp(total_cost)



