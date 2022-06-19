clear
close all

HighAlloy = importfile(".\Thermocalc based on EPMA.xlsx", "High Alloy Band", [4, 1679]);
LowAlloy = importfile(".\Thermocalc based on EPMA.xlsx", "Low Alloy Band", [4, 1556]);
Overall = importfile(".\Thermocalc based on EPMA.xlsx", "Overall Average", [4, 1556]);

HighAlloy(:,2:end) = HighAlloy(:,2:end)*100;
LowAlloy(:,2:end) = LowAlloy(:,2:end)*100;
Overall(:,2:end) = Overall(:,2:end)*100;
colours=[0 0.4470 0.7410; 0.8500 0.3250 0.0980; 0.9290 0.6940 0.1250; 0.4940 0.1840 0.5560; 0.4660 0.6740 0.1880; 0.3010 0.7450 0.9330; 0.6350 0.0780 0.1840; 0, 104/255, 87/255]; % colours for graphs

%% High Alloy Main Phases
figure(1)
plot(HighAlloy(:,1),HighAlloy(:,8),'LineWidth',4) % Liquid
hold on
plot(HighAlloy(:,1),HighAlloy(:,2),'LineWidth',4) % Ferrite
plot(HighAlloy(:,1),HighAlloy(:,4),'LineWidth',4) % Austenite
plot(HighAlloy(:,1),HighAlloy(:,9),'LineWidth',4) % M23C6
plot(HighAlloy(:,1),HighAlloy(:,12),'LineWidth',4) % M7C3
plot(HighAlloy(:,1),HighAlloy(:,10),'LineWidth',4) % M23C6 with Mn
legend('Liquid','Ferrite','Austenite','M_2_3C_6','M_7C_3','M_2_3C_6','Location','best')
xlabel('Temperature (^oC)')
ylabel('Phase Fraction (wt%)')
set(gca,'FontSize',18);
% axis([0 1600 0 110])
% set(gca, 'XTick', 0:200:1600)
% set(gca, 'YTick', 0:20:100)

% Minor Phases
figure(2)
plot(HighAlloy(:,1),HighAlloy(:,5),'LineWidth',4) % MC
hold on
plot(HighAlloy(:,1),HighAlloy(:,12),'LineWidth',4) % M7C3
plot(HighAlloy(:,1),HighAlloy(:,9),'LineWidth',4) % M23C6
plot(HighAlloy(:,1),HighAlloy(:,6),'LineWidth',4) % HCP Mo V Cr
plot(HighAlloy(:,1),HighAlloy(:,10),'LineWidth',4) % M23C6 with Mn
legend('MC','M_7C_3','M_2_3C_6','HCP','M23C3 2','Location','best')
xlabel('Temperature (^oC)')
ylabel('Phase Fraction (wt%)')
set(gca,'FontSize',18);
axis([0 1000 0 7])
% set(gca, 'XTick', 0:200:1200)
% set(gca, 'YTick', 0:0.2:1)

%% Low Alloy Main Phases
figure(3)
plot(LowAlloy(:,1),LowAlloy(:,7),'LineWidth',4) % Liquid
hold on
plot(LowAlloy(:,1),LowAlloy(:,2),'LineWidth',4) % Ferrite
plot(LowAlloy(:,1),LowAlloy(:,3),'LineWidth',4) % Austenite
plot(LowAlloy(:,1),LowAlloy(:,8),'LineWidth',4) % M23C6
plot(LowAlloy(:,1),LowAlloy(:,11),'LineWidth',4) % M7C3
plot(LowAlloy(:,1),LowAlloy(:,9),'LineWidth',4) % M23C6
legend('Liquid','Ferrite','Austenite','M_2_3C_6','M_7C_3','Location','best')
xlabel('Temperature (^oC)')
ylabel('Phase Fraction (wt%)')
set(gca,'FontSize',18);
% axis([0 1600 0 110])
% set(gca, 'XTick', 0:200:1600)
% set(gca, 'YTick', 0:20:100)

% Minor Phases
figure(4)
plot(LowAlloy(:,1),LowAlloy(:,4),'LineWidth',4) % MC
hold on
plot(LowAlloy(:,1),LowAlloy(:,11),'LineWidth',4) % M7C3
plot(LowAlloy(:,1),LowAlloy(:,8),'LineWidth',4) % M23C6
plot(LowAlloy(:,1),LowAlloy(:,10),'LineWidth',4) % M3C2
plot(LowAlloy(:,1),LowAlloy(:,9),'LineWidth',4) % M23C6
plot(LowAlloy(:,1),LowAlloy(:,5),'LineWidth',4) % HCP 1
legend('MC','M_7C_3','M_2_3C_6','M_3C_2','M_2_3C_6','HCP','Location','best')
xlabel('Temperature (^oC)')
ylabel('Phase Fraction (wt%)')
set(gca,'FontSize',18);
axis([0 1000 0 7])
% set(gca, 'XTick', 0:200:1200)
% set(gca, 'YTick', 0:0.2:1)

%% Overall Main Phases
figure(5)
plot(Overall(:,1),Overall(:,7),'LineWidth',4) % Liquid
hold on
plot(Overall(:,1),Overall(:,2),'LineWidth',4) % Ferrite
plot(Overall(:,1),Overall(:,3),'LineWidth',4) % Austenite
plot(Overall(:,1),Overall(:,8),'LineWidth',4) % M23C6
plot(Overall(:,1),Overall(:,11),'LineWidth',4) % M7C3
plot(Overall(:,1),Overall(:,9),'LineWidth',4) % M23C6
legend('Liquid','Ferrite','Austenite','M_2_3C_6','M_7C_3','Location','best')
xlabel('Temperature (^oC)')
ylabel('Phase Fraction (wt%)')
set(gca,'FontSize',18);
% axis([0 1600 0 110])
% set(gca, 'XTick', 0:200:1600)
% set(gca, 'YTick', 0:20:100)

% Minor Phases
figure(6)
plot(Overall(:,1),Overall(:,4),'LineWidth',4) % MC
hold on
plot(Overall(:,1),Overall(:,11),'LineWidth',4) % M7C3
plot(Overall(:,1),Overall(:,8),'LineWidth',4) % M23C6
plot(Overall(:,1),Overall(:,10),'LineWidth',4) % M3C2
plot(Overall(:,1),Overall(:,9),'LineWidth',4) % M23C6
plot(Overall(:,1),Overall(:,5),'LineWidth',4) % HCP 1 ie Mo2C or V2C
legend('MC','M_7C_3','M_2_3C_6','M_3C_2','M_2_3C_6','HCP','Location','best')
xlabel('Temperature (^oC)')
ylabel('Phase Volume Fraction (V%)')
set(gca,'FontSize',18);
axis([0 1000 0 7])
% set(gca, 'XTick', 0:200:1200)
% set(gca, 'YTick', 0:0.2:1)

%% Both with high alloy as solid lines and low as dashed

% Minor Phases
figure(7)
plot(HighAlloy(:,1),HighAlloy(:,5),'Color',colours(1,:),'LineWidth',4) % MC
hold on
plot(HighAlloy(:,1),HighAlloy(:,12),'Color',colours(2,:),'LineWidth',4) % M7C3
plot(HighAlloy(:,1),HighAlloy(:,6),'Color',colours(3,:),'LineWidth',4) % HCP Mo V Cr ie Mo2C or V2C
plot(HighAlloy(:,1),HighAlloy(:,9),'Color',colours(4,:),'LineWidth',4) % M23C6
plot(HighAlloy(:,1),HighAlloy(:,10),'Color',colours(5,:),'LineWidth',4) % M23C6 with Mn

plot(LowAlloy(:,1),LowAlloy(:,10),'-.','Color',colours(6,:),'LineWidth',4) % M3C2
plot(HighAlloy(:,1),HighAlloy(:,3),'Color',colours(7,:),'LineWidth',4) % laves

plot(LowAlloy(:,1),LowAlloy(:,4),'-.','Color',colours(1,:),'LineWidth',4) % MC
plot(LowAlloy(:,1),LowAlloy(:,11),'-.','Color',colours(2,:),'LineWidth',4) % M7C3
plot(LowAlloy(:,1),LowAlloy(:,5),'-.','Color',colours(3,:),'LineWidth',4) % HCP 1 ie Mo2C or V2C
plot(LowAlloy(:,1),LowAlloy(:,8),'-.','Color',colours(4,:),'LineWidth',4) % M23C6
plot(LowAlloy(:,1),LowAlloy(:,9),'-.','Color',colours(5,:),'LineWidth',4) % M23C6

legend('MC','M_7C_3','M_2C','M_2_3C_6','M_2_3C_6','M_3C_2','Laves','Location','best')
% legend('(V,Mo,Cr,Fe)C','(Cr,Fe,Mn,V)_7C_3','(Mo,V,Cr,Fe)_2C','(Fe,Cr,Mo,Mn)_2_3C_6','(Cr,Mn,Fe)_2_3C_6','Cr_3C_2','Laves (Fe,Cr,Mo)','Location','best')
xlabel('Temperature (^oC)')
ylabel('Phase Volume Fraction (V%)')
set(gca,'FontSize',18);
axis([0 1000 0 7])

% Major Phases
% figure(8)
% 
% plot(HighAlloy(:,1),HighAlloy(:,8),'Color',colours(1,:),'LineWidth',4) % Liquid
% hold on
% plot(HighAlloy(:,1),HighAlloy(:,2),'Color',colours(2,:),'LineWidth',4) % Ferrite
% plot(HighAlloy(:,1),HighAlloy(:,4),'Color',colours(3,:),'LineWidth',4) % Austenite
% plot(HighAlloy(:,1),HighAlloy(:,9),'Color',colours(4,:),'LineWidth',4) % M23C6
% plot(HighAlloy(:,1),HighAlloy(:,12),'Color',colours(5,:),'LineWidth',4) % M7C3
% plot(HighAlloy(:,1),HighAlloy(:,10),'Color',colours(6,:),'LineWidth',4) % M23C6 with Mn
% 
% plot(LowAlloy(:,1),LowAlloy(:,7),'-.','Color',colours(1,:),'LineWidth',4) % Liquid
% plot(LowAlloy(:,1),LowAlloy(:,2),'-.','Color',colours(2,:),'LineWidth',4) % Ferrite
% plot(LowAlloy(:,1),LowAlloy(:,3),'-.','Color',colours(3,:),'LineWidth',4) % Austenite
% plot(LowAlloy(:,1),LowAlloy(:,8),'-.','Color',colours(4,:),'LineWidth',4) % M23C6
% plot(LowAlloy(:,1),LowAlloy(:,11),'-.','Color',colours(5,:),'LineWidth',4) % M7C3
% plot(LowAlloy(:,1),LowAlloy(:,9),'-.','Color',colours(6,:),'LineWidth',4) % M23C6
% 
% legend('MC','M_7C_3','M_2_3C_6','M_3C_2','Location','best') % VC
% xlabel('Temperature (^oC)')
% ylabel('Phase Volume Fraction (V%)')
% set(gca,'FontSize',18);
% axis([0 1000 0 7])