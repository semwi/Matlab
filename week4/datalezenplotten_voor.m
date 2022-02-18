% load
% readcell

% Importeer en vertaal de data uit Louisiana naar een array
Louisiana = importdata('Louisiana_GW150914.txt').data;
% Importeer en vertaal de data uit Washington naar een array
Washington = importdata('Washington_GW150914.txt').data;

% : Alle elementen in die demensie
% ; blokkeert code dat anders in de terminal zou komen
% , scheid elementen in een bijvoorbeeld een array

% Scheid de variabelen Louisiana in tijd en strain
Tijd_Louisiana = Louisiana(:,1);
Strain_Louisiana  = Louisiana(:,2);

% Scheid de variabelen Washington in tijd en strain
Tijd_Washington = Washington(:,1);
Strain_Washington  = Washington(:,2);

% Verander de data naar een cell array
Louisiana_text = importdata('Louisiana_GW150914.txt').textdata;
Washington_text = importdata('Washington_GW150914.txt').textdata;

% Verander naar character string
text_char = char(Louisiana_text);

% Haal de x en y labels op
text_x = text_char(1:15);
text_y = text_char(26:end);


% Plot de data uit Louisiana
fig1 = plot(Tijd_Louisiana, Strain_Louisiana, Color="red", LineWidth=2);

% Behoud de Lousiana data, waardoor er twee plots kunnen worden overlapt
hold on;

% Plot het Washington figuur
fig2 = plot(Tijd_Washington, Strain_Washington, Color="blue", LineWidth=2);

% Maak de legenda
legend("Louisiana", "Washington", FontSize=13);

% zet de uitlijning aan
grid on;

% definieer de labels op de x en y assen
xlabel(text_x)
ylabel(text_y)