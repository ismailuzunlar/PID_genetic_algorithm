
function [selected_val] = selection(new,error_val)
error_val = 1./error_val;
fitness = error_val./sum(error_val); 
whell = cumsum(fitness);
for member = 1:40
    
parent(member,:) = new(find(whell >=rand(),1),:);

end

selected_val = fi(parent,0,24,0);
end