clc;
clear all;
population = 40;

for member = 1:population
    
val = round(rand(24,1));
val = boolean(val);
val = fi(val);
val = bitconcat(val);

new(member,:) = val ;

end

[kp_val_dec,ki_val_dec,kd_val_dec]=gain_and_error(new);
sim_genetic();


for k=1:100

[new] = selection(new,error_val);
[obj] = crossover(new);
[obj] = mutation(obj);
[kp_val_dec,ki_val_dec,kd_val_dec]=gain_and_error(obj);
sim_genetic();
figure(k)
for m=1:40
    grid on;
    hold on;
plot(sim_val(:,m));
end
end