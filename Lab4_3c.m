% Plot the transmission, T, versus energy, E, for this device up to E=V0. 
% Assume all of the bandgap difference between the InAs and GaAs appears in 
% the conduction band and you can use an average effective mass, m*. 
% (See the slides from Lecture 5 for the material parameters required.)

% By fitting the transmission peaks from (a) above to the approximate Lorentzian 
% form discussed in class find the approximate lifetime for electrons in each of 
% the quasi-bound states.

m;
V;
hbar = ;
Lb = 4*(10^(-9));
Lw = 10^(-8);
E = linspace(0,V, 10000);
beta = @(E) (sqrt(2*m*(V-E)))/hbar;
k =  sqrt(2*m*E)/hbar;
K =  (sqrt(2*m*(V-E))*cosh(bata*Lb)*cos(k*Lw))-(((2*E)-V)*sinh(beta*Lb)*sin(k*Lw));
A =  ((V*V)*((sinh(bta*Lb))^2)*(K*K))/(4*E*E*(V-E)*(V-E));
T =  1/(1+A);
plot(E,T);

