% laad de data uit de f functie.
f = [8.288, 8.344, 8.504, 8.472, 8.544, 8.27, 8.57, 8.61, 8.58, 8.43, 7.736330910661525, 8.191570683519993, 9.444864513483578, 9.274587327076324, 8.93324297199036, 8.395025513983855];

% Maak x variabele.
x = linspace(min(f), max(f), 16);

% Bereken de standaard diviatie.
sig = std(f);

% Maak het histogram.
h = histogram(f, 16);

% Met hold kun je twee functies in een grafiek plotten.
hold on

% Maak de gaussiche verdeling.
y = gaus1d(x, mean(f), 1, sig, 0);
trapz(x,y)

% Plot de gaussiche verdeling
plot(x, y);

% Zet x-as op drie decimalen
xtickformat('%.3f')

% Verander de punten naar komma's
oud_xLabel = get(gca,'XTickLabel');
nieuw_xLabel = strrep(oud_xLabel(:),'.',',');
set(gca,'XTickLabel',nieuw_xLabel)

% Maak de as-labels
xlabel('Meetwaarden uit experiment (nN)')
ylabel('Aantal resultaten (-)')

% Laat een de lijnen zien, zodat de grafiek beter af te lezen is.
grid on

%laat legenda zien
legend('Histogram','Gaussische functie')

