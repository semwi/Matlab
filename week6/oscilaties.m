%maak de tiles, zodat je drie functies onder elkaar kan plotten.
tiledlayout(3,1);
nexttile

% code van balckboard
% Definieer het tijdsinterval en maak een array voor t met dit interval.
Lt = 1e3 +1;
t = linspace(0, 5, Lt);
% nummer van oscilaties
Fs = (Lt - 1) / 5;
% frequenties
freq2 = 25;
freq1 = 50;
freq3 = 100*randn(100,1);
% amplitudes
A1 = 1.3;
A2 = 1;
A3= 1.3;
% Schrijf de functie met ruis
x1 = A1 * sin(2*pi*freq1*t)+A2 * sin(2*pi*freq2*t)+A3*sin(2*pi*freq3*t);
% Schrijf de functie zonder ruis
x2 = A1 * sin(2*pi*freq1*t);
%plot en label de assen
plot(t,x1);
% behoud functie
hold on;
plot(t,x2)
xlabel('Tijd (s)');
% plot
nexttile
plot(t,x2)
xlabel('Tijd (s)');

% ga naar de volgende tile
nexttile
% tranformeer functie
X = fft(x2);
f = Fs / 2 * linspace( 0, 1, ( Lt + 1 ) / 2 ) ;
Xss = (abs((X( 1:(Lt+1)/2 )))*2);
% plot de tweede functie
plot(f, Xss)
xlabel('frequentie (hz)');

% XII en XIII; Ja en Ja
% De transformatie wordt groter, als je de amplitude aanpast.