n=5;
N=n+1;
%round
for k=1:N-1
    fprintf("\n Round=%d\n",k)
    disp("___________________")
    for i=1:N-1
        j=mod((k-i),N-1);
        if j==i || j==0
           
            fprintf("\n Team %d vs Team %d",i,N)
            
        else
           fprintf("\n Team %d vs Team %d",i,j) 

        end
        end
    end