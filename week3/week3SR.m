x = linspace(-0.3, 0.3, 100);
y = gaus1d(x, 0, 0.5, 0.05, 0);

% A is 8 voor integraal is 1

plot(x,y,'-',"MarkerSize",6,"Linewidth",2);
trapz( x, y )

dy = diff(y);
plot(x(1:99), dy);


function [Y] = cumptrapz(x,y)

end

%set(gcf, 'paperpositionmode', 'auto') niets te zien
%set(gcf, 'color', 'blue'), kleur buiten plot blauw
%set(gcf, 'renderer', 'opengl'), niets te zien
