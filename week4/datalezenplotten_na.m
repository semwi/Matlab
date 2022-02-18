tiledlayout(1,2);

% Importeer en vertaal de data uit Louisiana naar een array
Louisiana = importdata('Louisiana_GW150914.txt').data;
% Importeer en vertaal de data uit Washington naar een array
Washington = importdata('Washington_GW150914.txt').data;

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

% Plot (Washington)
nexttile
plot(Tijd_Washington,Strain_Washington, Color="red")
title("Hanford, Washington(H1)")
grid on;
legend("L1 observed");

% plot Louisiana
nexttile
plot(Tijd_Louisiana,Strain_Louisiana)
title("Livington, Louisiana(L1)")
grid on;
legend("H1 observed");


