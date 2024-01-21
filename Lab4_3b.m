% Find the energies of the "quasi-bound states”, En.

m= 0.046;
hbar = 6.5821*(10^(-16));
Lw = 10^(-8);
n = 1;
while (n<11)
En = ((pi*hbar*hbar*n*n)/(2*m*Lw*Lw))*1000000000000;
fprintf ('The value of %d th Energy is (10^-12)* %f eV \n', n, En);
n=n+1;
end