% Data from the table
distance_mm = [4, 6, 8, 10, 15, 20, 25, 30, 35, 40, 50, 60, 70, 80, 90, 100];
mean_mass_moy = [44978, 30840, 21594, 15727, 8156, 4854, 3124, 2217, 1672, 1283, 848, 594, 421, 333, 257, 208];
ln_d = [1.38, 1.80, 2.07, 2.30, 2.70, 3, 3.21, 3.40, 3.55, 3.68, 3.91, 4.10, 4.24, 4.38, 4.49, 4.60];
ln_M = [10.71, 10.33, 9.98, 9.66, 9.01, 8.49, 8.05, 7.70, 7.42, 7.15, 6.74, 6.39, 6.04, 5.81, 5.55, 5.34];
delta_ln_M = [0.0018, 0.0015, 0.0004, 0.0023, 0.0039, 0.0039, 0.0022, 0.0039, 0.0179, 0.0158, 0.0341, 0.0127, 0.0117, 0.0139, 0.0361, 0.0194];

% Plotting ln(M) vs ln(d) with error bars
figure;
errorbar(ln_d, ln_M, delta_ln_M, 'o', 'CapSize', 5, 'DisplayName', 'ln(M) vs ln(d)');
hold on;

% Adding labels and title
xlabel('ln(d)');
ylabel('ln(N)');
title('ln(M) vs ln(d) with Error Bars');

% Show the legend
legend();

% Display the plot
grid on;