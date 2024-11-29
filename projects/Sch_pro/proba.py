import numpy as np
import spicy as sp
import spicy.special as spsp
import matplotlib.pyplot as plt

n= 30
p = 0.5
q = 1-p

#Create Binominal distribution (exact)
PXbinomial = []
for k in range(n+1):
    probX = spsp.comb(n, k) * p **k q ** (n-k)
    PXbinomial.append(probX)

#Create Normal distribution (approximation)
mu = n*p
sigma = np.sqrt(n*p*q)

X = np.arange(0, n, 0.01)
PXnormal = (1/(sigma*np.sqrt(2*np.pi))) * np.exp(-((X-mu)**2) / (2 * sigma**2))

#Plot
plt.plot(PXbinomial, label= "binomial")
plt.plot(X, PXnormal, label="normal")
plt.legend()
plt.xlim(0, n)