
function [kp_val_dec,ki_val_dec,kd_val_dec]=gain_and_error(new)

for member = 1:40
    
    kp = bitget(new(member,:),17:24);
    kp = boolean(kp);
    kp = fliplr(kp);
    kp = fi(kp);
    kp = bitconcat(kp);
    
    ki = bitget(new(member,:),9:16);
    ki = boolean(ki);
    ki = fliplr(ki);
    ki = fi(ki);
    ki = bitconcat(ki);
    
    kd = bitget(new(member,:),1:8);
    kd = boolean(kd);
    kd = fliplr(kd);
    kd = fi(kd);
    kd = bitconcat(kd);
    
    
    kp_val(member,:) = kp;
    ki_val(member,:) = ki;
    kd_val(member,:) = kd;
    
    
    kp_val_dec = (double(kp_val)/255)*15;
    ki_val_dec = (double(ki_val)/255)*10;
    kd_val_dec = (double(kd_val)/255)*2;
    
    
end
end