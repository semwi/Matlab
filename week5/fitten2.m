% Importeer en vertaal de data uit het csv bestand naar een array
interferometrie = importdata('interferometrie2.csv').data;

% Scheid de variabelen uit het de array in overgangen en verschuivingen
overgangen = interferometrie(:,1);
verschuivingen  = interferometrie(:,2);

% Bereken de error in de verplaatsing in de x-as
err_verschuivingen = (3*std(verschuivingen))*ones(size(overgangen));

% De onzekerheid in de franjes is 2
err_overgangen = 2*ones(size(overgangen));

% Plot de meetpunten uit de array in de grafiek
fig1 = scatter(overgangen, verschuivingen);
hold on;

% Maak de regressielijn uit de meetpunten
f = fit(overgangen, verschuivingen,'poly1');
plot(f);
hold on;

% Maak de errorbar
errorbar(overgangen, verschuivingen, err_verschuivingen,err_verschuivingen, err_overgangen, err_overgangen, "LineStyle","none")

% Maak de legenda
legend("Metingen", "regressielijn","errorbar",FontSize=13, Location="southeast");

% zet de uitlijning aan
grid on;

% definieer de labels op de x en y assen
xlabel("Aantal franjes waargenomen (#)")
ylabel("Verschuiving x (m)")

% laat de formule voor de fit zien:
f

