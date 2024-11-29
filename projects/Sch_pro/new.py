import numpy as np
import scipy as sp  # Corrected module name
import scipy.special as spsp  # Corrected module name
import matplotlib.pyplot as plt

n = 30
p = 0.5
q = 1 - p

# Create Binomial distribution (exact)
PXbinomial = []
for k in range(n + 1):
    probX = spsp.comb(n, k) * p**k * q**(n - k)  # Fixed syntax error
    PXbinomial.append(probX)

# Create Normal distribution (approximation)
mu = n * p
sigma = np.sqrt(n * p * q)

X = np.arange(0, n, 0.01)
PXnormal = (1 / (sigma * np.sqrt(2 * np.pi))) * np.exp(-((X - mu)**2) / (2 * sigma**2))

# Plot
plt.plot(PXbinomial, label="binomial")
plt.plot(X, PXnormal, label="normal")
plt.legend()
plt.xlim(0, n)
plt.show()  # Ensure the plot is displayed
