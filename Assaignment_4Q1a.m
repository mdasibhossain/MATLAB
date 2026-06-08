clear;clc;
T = [2, 4, 6, 8, 10, 20, 40, 60, 80, 100, 150, 250, 350, 500, 1000, 1400];
K = [46, 300, 820, 1560, 2300, 5000, 3500, 2100, 1350, 900, 400, 190, 120,75, 30, 20];
loglog(T,K,"r-o")
grid on;
xlabel("Temperature(T)");
ylabel("Thermal Conductivity(K)");
title("Plot of T and K (log scale)");