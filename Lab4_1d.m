%Between which energy levels will the emission for He+ be visible?
% What visible wavelengths will be emitted?
% (Light is visible between about 400nm and 700nm.)

n2 = 10;
while (n2 > 1)
    n1 = 1;
    Wavelength = linspace(1,n2-1,n2-1);
    while (n1 < n2) 
        inverse_lambda = 4.388*(10^7)*((1/(n1*n1))-(1/(n2*n2)));
        lambda = (1/inverse_lambda)*(10^9);
        Wavelength (n1) = lambda;
        if ((400 < lambda) && (lambda<700))
            fprintf('Transition from %d to %d emits wavelength in visible range %f nm \n', n2, n1, lambda);
        end
        n1 = n1 + 1;
    end
    Wavelength;
        n2 = n2 -1;
 end
