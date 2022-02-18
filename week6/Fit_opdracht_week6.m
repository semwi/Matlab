% Importeer data uit het csv bestand.
Haal_data_op = importdata('interferometrie2.csv');

% Vertaal de data uit het csv bestand naar een array.
interferometrie = Haal_data_op.data;

% Scheid de variabelen uit het de array in franjes en verschuivingen.
franjes = interferometrie(:,1);
verschuivingen  = interferometrie(:,2);

% De onzekerheid in de verschuiving is 1 micro meter.
err_verschuivingen = (0.000001)*ones(size(franjes));

% De onzekerheid in de getelde franjes is 2.
err_overgangen = 2*ones(size(franjes));

% Plot de meetpunten uit de array in de grafiek, en maak de punten
% groter en maak de kleur van de punten blauw.
fig1 = scatter(franjes, verschuivingen,"LineWidth",1, ...
    "MarkerEdgeColor","blue");
hold on;

% Maak de errorbar, vergroot de errorbar en maak de errorbar rood.
errorbar(franjes, verschuivingen, err_verschuivingen, ...
    err_verschuivingen, err_overgangen, err_overgangen, "LineStyle", ...
    "none",LineWidth=1, Color="red")

% Maak de regressielijn uit de meetpunten.
f = fit(franjes, verschuivingen,'poly1');
F = plot(f);

% Maak de kleur van de regressielijn groen en maak de lijn dikker.
set(F, 'Color', 'green')
set(F, 'LineWidth', 2)
hold on;

% Maak de legenda.
legend("Metingen", "errorbar","regressielijn",FontSize=13, ...
    Location="southeast");

% Zet de uitlijning aan.
grid on;

% Definieer de labels op de x en y assen en vergroot de lettergrootte.
xlabel("Aantal franjes waargenomen (#)", "FontSize",14)
ylabel("Verschuiving x (m)", "FontSize",14)

% Laat de formule en andere gegevens voor de fit zien.
f

