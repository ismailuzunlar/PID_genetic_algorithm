function [sum] = bitsum(array)
sum = 0;

for n=0:23
   sum = sum + array(n+1)*2^(23-n) ;
end


