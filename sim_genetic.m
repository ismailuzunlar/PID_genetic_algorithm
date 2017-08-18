

for member = 1:population
    
    
    kp_ws = kp_val_dec(member,:);
    ki_ws = ki_val_dec(member,:);
    kd_ws = kd_val_dec(member,:);
    
    sim(bdroot,20);
    
    error_val(member,:) = error.Data(end,:);
    sim_val(:,member) = output.Data;
    
end
    