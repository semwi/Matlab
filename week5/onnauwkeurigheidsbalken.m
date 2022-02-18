% Importeer en vertaal de data uit Louisiana naar een array
interferometrie = importdata('interferometrie.csv').data;

% Scheid de variabelen Louisiana in tijd en strain
overgangen = interferometrie(:,1);
verschuivingen  = interferometrie(:,2);

err = (3*std(verschuivingen))*ones(size(overgangen));

% Plot de data uit Louisiana
fig1 = scatter(overgangen, verschuivingen);
hold on;
errorbar(overgangen, verschuivingen, err, "LineStyle","none")

% Maak de legenda
legend("Metingen", "errorbar",FontSize=13, Location="southeast");

% zet de uitlijning aan
grid on;

% definieer de labels op de x en y assen
xlabel("licht overgangen (-)")
ylabel("Verschuiving x (m)")