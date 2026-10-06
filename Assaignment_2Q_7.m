
clc;clear all;
n=9;
N=n+1;

for k=1:N-1
    fprintf("\n Round-%d",k)
    fprintf("\n====================")
    for i=1:N-1
        j=mod(k-i,N-1);

        if j==0 
           j=N-1;
        end
        
        if i<=j
           if j==i
               fprintf("\n Team %d Vs Team %d",i,N)
           else
                fprintf("\n Team %d Vs Team %d",i,j)

           end
        end

        



        
    end
end
