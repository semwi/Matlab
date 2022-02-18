% genereert een plot

%deffinieer variabelen
x = linspace(-1,3, 40)
y = gaus1d(x, 1.5, 2, 1, 0.5)

% plot de grafiek
plot(x,y,'-',"MarkerSize",6,"Linewidth",2)
