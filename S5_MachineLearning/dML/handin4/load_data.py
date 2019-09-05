import sklearn.datasets

def get_data():
    # Load the Iris data set
    X, y = sklearn.datasets.load_iris(True)
    X = X[:, 0:2]  # reduce to 2d so you can plot if you want
    return X, y