% Maak een array van alle meetresultaten uit de experimeten.
f = [7.736, 8.192, 9.445, 9.275, 8.933, 8.395, 8.27, 8.57, 8.61, 8.58, ...
    8.43, 8.288, 8.344, 8.504, 8.472, 8.544];

% Vind de gemiddelde waarde voor f
f_mean = mean(f);

% Maak x-as.
x = linspace(min(f), max(f), 100);

% Bereken de standaard diviatie.
sig = std(f);

% Maak het histogram.
h = histogram(f,16);

% Maak de gaussiche verdeling.
y = gaus1d(x, mean(f), 1.02, sig, 0);

% Met hold kun je twee functies in een grafiek plotten.
hold on

% Plot de gaussiche verdeling
plot(x, y);

% Met hold kun je twee functies in een grafiek plotten.
hold on

% Plot de de gemiddelde waarde 
scatter(f_mean, linspace(0, 4, 30),'black','|')

% Zet x-as op één decimaal.
xtickformat('%.1f')

% Zet alleen maar hele nummers op de assen.
set(gca,'ytick',0:4)

% Verander de punten naar komma's
oud_xLabel = get(gca,'XTickLabel');
nieuw_xLabel = strrep(oud_xLabel(:),'.',',');
set(gca,'XTickLabel',nieuw_xLabel)

% Maak de as-labels
xlabel('Meetwaarden uit experimenten (m)')
ylabel('Aantal resultaten (-)')

% Laat een de lijnen zien, zodat de grafiek beter af te lezen is.
grid on

%laat legenda zien
legend('Histogram','Gaussische functie', 'Gemiddelde waarde')

