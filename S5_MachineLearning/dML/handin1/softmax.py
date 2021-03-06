import numpy as np
import matplotlib.pyplot as plt
import scipy as sc
import scipy.special as scisp
import scipy.optimize as opti
import cProfile, pstats, io
from sklearn.utils import shuffle
from sklearn.metrics import confusion_matrix
from h1_util import numerical_grad_check

def softmax(X):
    """ 
    Compute the softmax of each row of an input matrix (2D numpy array).
    
    the numpy functions amax, log, exp, sum may come in handy as well as the keepdims=True option and the axis option.
    Remember to handle the numerical problems as discussed in the description.
    You should compute lg softmax first and then exponentiate 
    
    More precisely this is what you must do.
    
    For each row x do:
    compute max of x
    compute the log og the denominator for softmax but subtracting out the max i.e (log sum exp x-max) + max
    compute log of the softmax: x - lsm
    exponentiate that
    
    You can do all of it without for loops using numpys vectorized operations.

    Args:
        X: numpy array shape (n, d) each row is a data point
    Returns:
        res: numpy array shape (n, d)  where each row is the softmax transformation of the corresponding row in X i.e res[i, :] = softmax(X[i, :])
    """
    res = np.zeros(X.shape)
    ### YOUR CODE HERE no for loops please
    c = np.amax(X, axis=1, keepdims=True)
    res = [(np.exp(x - (c[idx][0] + np.log(np.sum(np.exp(x - c[idx][0])))))) for idx, x in enumerate(X)]
    ### END CODE
    return res
    
    
def soft_cost(X, Y, W, reg=0.0):
    """ 
    Compute the regularized cross entropy and the gradient under the softmax model 
    using data X,y and weight vector w.
    Remember not to regualarize the bias parameters which are the first index of each model i.e. the first row of W.

    the functions np.nonzero, np.su, np.dot (@), may come in handy
    Args:
        X: numpy array shape (n, d) - the data each row is a data point
        Y: numpy array shape (n, k) target values in 1-in-K encoding (n x K)
        W: numpy array shape (d x K)
        reg: scalar - Optional regularization parameter
    Returns:
        totalcost: Average Negative Log Likelihood of w + reg cost 
        gradient: The gradient of the average Negative Log Likelihood at w + gradient of regularization
    """
    input_size = X.shape[0]
    wreg = W.reshape(X.shape[1], -1)
    l2reg = (1. / 2.) * reg * np.linalg.norm(wreg)**2
    l2reg_grad = reg*wreg
    cost = np.nan
    grad = np.zeros(W.shape)*np.nan
    ### YOUR CODE HERE
    softmaxZ = softmax(X.dot(W))
    cost = - np.sum(Y * np.log(softmaxZ)) / input_size + l2reg
    grad = - X.T.dot(Y - softmaxZ) / input_size + l2reg_grad
    ### END CODE
    return cost, grad

def batch_grad_descent(X, Y, W=None, reg=0.0, lr=0.5, rounds=10):
    """
    Run batch gradient descent to learn softmax regression weights that minimize the in-sample error
    Args:
        X: numpy array shape (n, d) - the data each row is a data point
        Y: numpy array shape (n, k) target values in 1-in-K encoding (n x K)
        W: numpy array shape (d x K)
        reg: scalar - Optional regularization parameter
        lr: scalar - learning rate

    Returns: 
        w: numpy array shape (d,) learned weight vector w
    """
    if W is None: W = np.zeros((X.shape[1], Y.shape[1]))
    ### YOUR CODE HERE
    for i in range(rounds):
        cost, grad = soft_cost(X, Y, W, reg)
        w_temp = np.copy(W)
        W = w_temp - lr * grad
    ### END CODE
    return W

def mini_batch_grad_descent(X, Y, W=None, reg=0.0, lr=0.1, epochs=10, batch_size=16):
    """
    Run Mini-Batch Gradient Descent on data X,Y to minimize the NLL for softmax regression.
    Printing the performance every epoch is a good idea
    
    Args:
        X: numpy array shape (n, d) - the data each row is a data point
        Y: numpy array shape (n, k) target values in 1-in-K encoding (n x K)
        W: numpy array shape (d x K)
        reg: scalar - Optional regularization parameter
        lr: scalar - learning rate
        batchsize: scalar - size of mini-batch
        epochs: scalar - number of iterations through the data to use

    Returns: 
        w: numpy array shape (d,) learned weight vector w
    """
    if W is None: W = np.zeros((X.shape[1], Y.shape[1]))
    ### YOUR CODE HERE
    n = X.shape[0]
    number_array = range(n)
    batches = int(np.ceil(n / batch_size))
    for epoch in range(epochs):
        random_number_array = np.random.permutation(number_array)
        w_temp = np.zeros(W.shape)
        for batch_number in range(batches):
            start_index = batch_number * batch_size
            numbers = random_number_array[start_index:start_index + batch_size]
            x_random_batch = X[numbers]
            y_random_batch = Y[numbers]
            w_temp += batch_grad_descent(x_random_batch, y_random_batch, W, reg, lr, rounds=1)
        W = w_temp / batches
    ### END CODE
    return W

def test_softmax():
    print('Test softmax')
    X = np.zeros((3,2))
    X[0, 0] = np.log(4)
    X[1, 1] = np.log(2)
    print('Input to Softmax: \n', X)
    sm = softmax(X)
    expected = np.array([[4.0/5.0, 1.0/5.0], [1.0/3.0, 2.0/3.0], [0.5, 0.5]])
    print('Result of softmax: \n', sm)
    assert np.allclose(expected, sm), 'Expected {0} - got {1}'.format(expected, sm)
    print('Test complete')
        

def test_reg_grad():
    print('*'*5, 'Testing  Gradient')
    X = np.array([[1.0, 0.0], [1.0, 1.0], [1.0, -1.0]])    
    w = np.ones((2, 3))
    y = np.eye(3, dtype='int64')
    reg = 1.0
    f = lambda z: soft_cost(X, y, W=z, reg=reg)
    numerical_grad_check(f, w)
    print('Test Success')

    
if __name__ == "__main__":
    test_softmax()
    test_reg_grad()
