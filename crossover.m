function [obj] = crossover(parent)

for i=1:20
    a = rand();
    
if (a<=0.8125)
    %bin(parent(1:2,:))
    pt = [round(rand*100*24/100-1) round(rand*100*24/100-1)];
    %pt = [9 16];
    pt = sort(pt);
    pt = pt+1 ;
    if (pt(1)==1 | pt(1)==2 | pt(2)==1 |pt(2)==2| pt(1)==0 |pt(2)==0)
       obj(2*i-1,:) = parent(2*i-1,:);
       obj(2*i,:)   = parent(2*i,:);
    else
    
    section11 = fliplr(bitget(parent(2*i-1,:),pt(2):24));
    section12 = fliplr(bitget(parent(2*i,:),pt(2):24));
    
    section21 = fliplr(bitget(parent(2*i-1,:),pt(1)-1:pt(2)-1));
    section22 = fliplr(bitget(parent(2*i,:),pt(1)-1:pt(2)-1));
    
    section31 = fliplr(bitget(parent(2*i-1,:),1:pt(1)-2));
    section32 = fliplr(bitget(parent(2*i,:),1:pt(1)-2));
    
    
    cross(2*i-1,:) = cell2mat([num2cell(double(section11)) num2cell(double(section22)) num2cell(double(section31))]);
    cross(2*i,:)   = cell2mat([num2cell(double(section12)) num2cell(double(section21)) num2cell(double(section32))]);
    
    dg(2*i-1) = bitsum(cross(2*i-1,:));
    dg(2*i)   = bitsum(cross(2*i,:)) ;
    
    obj(2*i-1,:) = fi(dg(2*i-1),0,24.0);
    obj(2*i,:)  = fi(dg(2*i),0,24.0);
    end
    
else
       obj(2*i-1,:) = parent(2*i-1,:);
       obj(2*i,:)   = parent(2*i,:);
end
end
end
    
   
    
    
    
    