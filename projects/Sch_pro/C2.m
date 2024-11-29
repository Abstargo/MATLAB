% Parameters
n = 30;        % Number of trials
p = 0.5;       % Probability of success
q = 1 - p;     % Probability of failure

% Create Binomial distribution (exact)
PXbinomial = zeros(1, n+1); % Preallocate array
for k = 0:n
    % Binomial probability: n choose k * p^k * q^(n-k)
    PXbinomial(k+1) = nchoosek(n, k) * (p^k) * (q^(n-k));
end

% Create Normal distribution (approximation)
mu = n * p;                % Mean
sigma = sqrt(n * p * q);   % Standard deviation
X = 0:0.01:n;              % Range of x values

% Normal distribution formula
PXnormal = (1 / (sigma * sqrt(2 * pi))) .* exp(-((X - mu).^2) / (2 * sigma^2));

% Plot
figure;
hold on;
plot(0:n, PXbinomial, 'o-', 'DisplayName', 'Binomial'); % Binomial distribution
plot(X, PXnormal, '-', 'DisplayName', 'Normal');       % Normal approximation
hold off;

% Add legend and labels
legend('show');
xlabel('k');
ylabel('Probability');
xlim([0 n]);
title('Binomial vs Normal Distribution');
