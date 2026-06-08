clc;clear all;
%cost matrix
C=[3 5 7 6;2 5 8 2;3 6 9 2];
%supply
supply=[50 75 25];
%Demand
Demand=[20 20 50 60];
[m,n]=size(C);
X=zeros(m,n);

while any(supply>0)&& any(Demand>0)
    %Minimum Cost
    min_cost=inf;
    for i=1:m
        for j=1:n
            if C(i,j)<min_cost && supply(i)>0 && Demand(j)>0
                min_cost=C(i,j);
                row=i;
                col=j;
               
            end 
        end
    end
    x=min(supply(row),Demand(col));
    X(row,col)=x;
    % Update supply and Update
    supply(row)=supply(row)-x;
    Demand(col)=Demand(col)-x;
end
disp(X)
total_cost=sum(sum(C.*X))
