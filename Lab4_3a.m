% Plot the transmission, T, versus energy, E, for this device up to E=V0. 
% Assume all of the bandgap difference between the InAs and GaAs appears in 
% the conduction band and you can use an average effective mass, m*. 
% (See the slides from Lecture 5 for the material parameters required.)

q = 1.6*(10^(-19));
m = 0.046*q;
V = q;
e = 2.718;
hbar = 6.5821*(10^(-16))*q;
Lb = 4*(10^(-9));
Lw = 10^(-8);
E = linspace(0,V, 524288);

beta = (sqrt(2.*m.*(V-E)))/hbar;
k =  sqrt(2.*m.*E)/hbar;

a = Lb.*beta;
b = ((e.^a) + (e.^(-1*a)))./2;
c = ((e.^a) - (e.^(-1*a)))./2;

 K1 =  2.*(power((E.*(V-E)),0.5)).*b.*(cos(Lw.*k));
 K2 = (E+E-V).*c.*sin(Lw.*k);
 K = K1- K2;

A =  (V.*c.*K)./(2.*E.*(V-E));
A_squared = A.*A;
T =  1./(1 + A_squared);
plot(E,T);
