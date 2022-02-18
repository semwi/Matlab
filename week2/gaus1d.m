function [y] = gaus1d(x,mu,A,sig,offset)
% Maakt een functie y met als input:x,mu,A,sig,offset.

% definieer variabelen
y = offset + A*exp(-(x-mu).^2/(2*   sig^2));

end