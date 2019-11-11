% Bryan Jay
% Question 5 

n_air = 1.00; 
n_1 = 1.50;
n_2 = 1.49; 

lamda = 1.55e-6; 

% wafer width
d_1 = 5.9;
d_2 = 10; 
d_3 = d_1; 

% normalized frequency
V_1 = ((2*pi)/lamda)*(d_1)*sqrt(n_1^2 - n_2^2);
V_2 = ((2*pi)/lamda)*(d_2)*sqrt(n_1^2 - n_2^2);
V_3 = ((2*pi)/lamda)*(d_3)*sqrt(n_1^2 - n_2^2);

% get the asymetric factor
c = (n_2^2 - n_air^2)/(n_1^2 - n_2^2);

% get the b values from the b-V curve of the TE modes 
b_1 = 0.636; 
b_2 = 0.847; 
b_3 = 0.636; 

% Calculate the effective index 
n_eff_1 = sqrt(b_1 * (n_1^2 - n_2^2) + n_2^2);
n_eff_2 = sqrt(b_2 * ( n_1^2 - n_2^2) + n_2^2); 
n_eff_3 = sqrt(b_3 * (n_1^2 - n_2^2) + n_2^2);

V_final = ((2*pi)/lamda)*19*sqrt(n_eff_2^2 - n_eff_1^2);

% Plot of the field distribution for TE
figure(1);
t = -pi:0.05:pi;
plot(cos(t), t);
title('TE Field')
legend('Field distribution');


% Plot of the field distribution for TM
figure(2);
t = -pi:0.05:pi;
plot(t,cos(t),-pi/2:0.05:(1.5*pi),sin(t))
title('TM Field')
legend('Field distribution TE','Field distribution TM');

