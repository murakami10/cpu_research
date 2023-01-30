import numpy as np
import matplotlib.pyplot as plt

x = np.array([20, 30, 40, 50, 60, 70, 80, 90, 100, 110])
y = np.array([100, 95, 85, 80, 75, 70, 65, 65, 60, 55])

def reg1dim(x, y):
    n = len(x)
    a = ((np.dot(x, y)- y.sum() * x.sum()/n)/
        ((x ** 2).sum() - x.sum()**2 / n))
    b = (y.sum() - a * x.sum())/n
    return a, b

a, b = reg1dim(x, y)

print(a, b)

plt.scatter(x, y, color="k")
plt.plot([0, x.max()], [b, a * x.max() + b]) #(0, b)地点から(xの最大値,ax + b)地点までの線
plt.show()