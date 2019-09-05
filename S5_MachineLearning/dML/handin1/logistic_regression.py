import numpy as np
import matplotlib.pyplot as plt
import scipy
from sklearn.metrics import confusion_matrix
from h1_util import numerical_grad_check

def logistic(z):
    """ 
    Computes the logistic function 1/(1+e^{-x}) to each entry in input vector z.
    
    np.exp may come in handy
    Args:
        z: numpy array shape (d,) 
    Returns:
       logi: numpy array shape (d,) each entry transformed by the logistic function 
    """
    logi = np.zeros(z.shape)
    ### YOUR CODE HERE
    logi = 1/(1+np.exp(-z))
    ### END CODE
    assert logi.shape == z.shape
    return logi

def log_cost(X, y, w, reg=0):
    """
    Compute the (regularized) cross entropy and the gradient under the logistic regression model 
    using data X, targets y, weight vector w (and regularization reg)
    
    The L2 regularization is 1/2 reg*|w_{1,d}|^2 i.e. w[0], the bias, is not regularized
    
    np.log, np.sum, np.choose, np.dot may be useful here
    Args:
        X: np.array shape (n,d) float - Features 
        y: np.array shape (n,)  int - Labels 
        w: np.array shape (d,)  float - Initial parameter vector
        reg: scalar - regularization parameter

    Returns:
      cost: scalar the cross entropy cost of logistic regression with data X,y using regularization parameter reg
      grad: np.arrray shape(n,d) gradient of cost at w with regularization value reg
    """
    cost = 0
    grad = np.zeros(w.shape)
    ### YOUR CODE HERE
    z = np.dot(X, w)                            # define z (to save time)
    wreg = np.delete(w, (0), axis=0)            # remove the bias (w[0]) from the weight vector
    l2reg = (1./2.) * reg * np.dot(wreg, wreg)  # The regularization. The length of a vector is the sqare root (which
                                                # cancels out the square, so we can simply take the dot product.

    nll = -np.sum(np.dot(y, np.log(logistic(z))) + np.dot((1-y), np.log(1 - logistic(z))))

    cost = 1/y.size * nll + l2reg  #E_in = 1/n * NLL

    gradtemp = - 1/y.size * np.dot(X.T, y-logistic(z))
    grad = gradtemp + l2reg



    ### END CODE
    assert grad.shape == w.shape
    return cost, grad


def batch_grad_descent(X, y, w=None, reg=0, lr=1.0, rounds=10):
    """
    Run Gradient Descent for logistic regression using all the data to compute gradient in each step
            
    Args:
        X: np.array shape (n,d) dtype float32 - Features 
        y: np.array shape (n,) dtype int32 - Labels 
        w: np.array shape (d,) dtype float32 - Initial parameter vector
        lr: scalar - learning rate for gradient descent
        reg: scalar regularization parameter (optional)    
        rounds: rounds to run (optional)

    Returns: 
        w: numpy array shape (d,) learned weight vector w
    """
    if w is None: w = np.zeros(X.shape[1])    
    #lr = 0.05
    ### YOUR CODE HERE

    for i in range(rounds):
        cost, grad = log_cost(X, y, w, reg)
        w_temp = np.copy(w)
        w = w_temp - lr * grad

    ### END CODE
    return w
    
def mini_batch_grad_descent(X, y, w=None, reg=0, lr=0.1, batch_size=16, epochs=10):
    """
      Run mini-batch stochastic Gradient Descent for logistic regression 
      use batch_size data points to compute gradient in each step.
    
    The function np.random.permutation may prove useful for shuffling the data before each epoch
    It is wise to print the performance of your algorithm at least after every epoch to see if progress is being made.
    Remeber the stochastic nature of the algorithm may give fluctuations in the cost as iterations increase.

    Args:
        X: np.array shape (n,d) dtype float32 - Features 
        y: np.array shape (n,) dtype int32 - Labels 
        w: np.array shape (d,) dtype float32 - Initial parameter vector
        lr: scalar - learning rate for gradient descent
        reg: scalar regularization parameter (optional)    
        rounds: rounds to run (optional)
        batch_size: number of elements to use in minibatch
        epochs: Number of scans through the data

    Returns: 
        w: numpy array shape (d,) learned weight vector w
    """
    if w is None: w = np.zeros(X.shape[1])
    ### YOUR CODE
    n = X.shape[0]
    number_array = range(n)
    batches = int (np.ceil(n/batch_size))
    for epoch in range(epochs):
        random_number_array = np.random.permutation(number_array)
        w_temp = np.zeros(w.shape)
        for batch_number in range(batches):
            start_index = batch_number*batch_size
            numbers = random_number_array[start_index:start_index+batch_size]
            x_random_batch = X[numbers]
            y_random_batch = y[numbers]
            w_temp += batch_grad_descent(x_random_batch, y_random_batch, w, reg, lr, rounds=1)
        w = w_temp/batches
    ### END CODE
    return w

def fast_descent(X, y, w=None, reg=0, rounds=100):
    """ Uses fancy optimizer to do the gradient descent """
    # unstable if linear separable...
    if w is None: w = np.zeros(X.shape[1])
    w =  scipy.optimize.minimize(lambda t: log_cost(X,y,t,reg), w, jac=True, options={'maxiter':rounds, 'disp':True})
    return w.x


def test_logistic():
    print('*'*5, 'Testing logistic function')
    a = np.array([0,1,2,3])
    lg = logistic(a)
    target = np.array([ 0.5, 0.73105858, 0.88079708, 0.95257413])
    assert np.allclose(lg, target), 'Logistic Mismatch Expected {0} - Got {1}'.format(target, lg)
    print('Test Success!')

def test_cost():
    print('*'*5, 'Testing Cost Function')
    X = np.array([[1.0, 0.0], [1.0, 1.0]])
    y = np.array([0, 0], dtype='int64')
    w = np.array([0.0, 0.0])
    reg = 0
    cost,_ = log_cost(X,y, w)
    target = -np.log(0.5)
    assert np.allclose(cost, target), 'Cost Function Error:  Expected {0} - Got {1}'.format(target, cost)
    print('Test Success')

def test_reg_cost():
    print('*'*5, 'Testing Regularized Cost Function')
    X = np.array([[1.0, -1.0], [-1.0, 1.0]])
    y = np.array([0, 0], dtype='int64')
    w = np.array([1.0, 1.0])
    reg = 1.0
    cost,_ = log_cost(X, y, w, reg=reg)
    target = -np.log(0.5) + 0.5
    assert np.allclose(cost, target), 'Cost Function Error:  Expected {0} - Got {1}'.format(target, cost)
    print('Test Success')

def test_grad():
    print('*'*5, 'Testing  Gradient')
    X = np.array([[1.0, 0.0], [1.0, 1.0]])
    w = np.array([0.0, 0.0])
    y = np.array([0, 0]).astype('int64')
    reg = 0
    f = lambda z: log_cost(X, y, w=z, reg=reg)
    numerical_grad_check(f, w)
    print('Test Success')

def test_reg_grad():
    print('*'*5, 'Testing  Gradient')
    X = np.array([[1.0, 0.0], [1.0, 1.0]])
    w = np.array([0.0, 0.0])
    y = np.array([0, 0]).astype('int64')
    reg = 1.0
    f = lambda z: log_cost(X, y, w=z, reg=reg)
    numerical_grad_check(f, w)
    print('Test Success')


def test_mini_batch_gradient_descent():
    print('*'*5, 'Testing Mini batch gradient descent')
    X = np.array([[1.0, 0.0], [1.0, 1.0]])
    w = np.array([0.0, 0.0])
    y = np.array([0, 0]).astype('int64')
    reg = 0.0
    nig = fast_descent(X, y, w, reg, rounds=100)
    nog = mini_batch_grad_descent(X, y, w, reg, lr=0.01, batch_size=16, epochs=10)
    print(nig, "hej", nog)





if __name__ == '__main__':
    test_logistic()
    test_cost()
    test_grad()
    test_reg_cost()
    test_reg_grad()
    test_mini_batch_gradient_descent()
    
    
