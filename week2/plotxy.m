function plotxy(x,y)
% plot een functie (x, y)

% definieer variabelen
x = [1, 4 , 7];
y = [1, 4, 7];

% maak het figuur
fig = figure(1); 
%maak het figuur leeg
clf (fig); 
% plot het figuur
plot(x,y, "-o","MarkerSize",6,"Linewidth",2)
% zet de as labels aan
xlabel('x-as')
ylabel('y-as')
% maak een grid in het figuur
grid on
end