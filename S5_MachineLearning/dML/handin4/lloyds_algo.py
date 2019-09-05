import numpy as np
import data

def lloyds_algorithm(X, k, T):
    """ Clusters the data of X into k clusters using T iterations of Lloyd's algorithm.

        Parameters
        ----------
        X : Data matrix of shape (n, d)
        k : Number of clusters.
        T : Maximum number of iterations to run Lloyd's algorithm.

        Returns
        -------
        clustering: A vector of shape (n, ) where the i'th entry holds the cluster of X[i].
        centroids:  The centroids/average points of each cluster.
        cost:       The cost of the clustering
    """
    n, d = X.shape

    # Initialize clusters random.
    clustering = np.random.randint(0, k, (n,))
    centroids = np.zeros((k, d))

    # Used to stop if cost isn't improving (decreasing)
    cost = 0
    oldcost = 0

    # Column names
    # print("Iterations\tCost")
    for i in range(T):

        # Update centroid
        centroids = np.zeros((k, d))
        # YOUR CODE HERE
        numberOfPointsInClusters = np.zeros((k,))
        for idx, point in enumerate(clustering):
            numberOfPointsInClusters[point] += 1
            centroids[point] += X[idx]
        for n in range(k):
            if numberOfPointsInClusters[n] == 0:
                numberOfPointsInClusters[n] = float('-inf')
        centroids = [centroid / numberOfPointsInClusters[idx] for idx, centroid in enumerate(centroids)]
        # END CODE

        # Update clustering

        # YOUR CODE HERE
        for idx, point in enumerate(X):
            clustering[idx] = np.argmin([np.linalg.norm(point - cluster) for cluster in centroids])
        # END CODE

        # Compute and print cost
        cost = 0
        for j in range(n):
            cost += np.linalg.norm(X[j] - centroids[clustering[j]]) ** 2
        # print(i + 1, "\t\t", cost)

        # Stop if cost didn't improve more than epislon (decrease)
        if np.isclose(cost, oldcost): break  # TODO
        oldcost = cost

    return clustering, centroids, cost

def main():
    # Load the Iris data set
    #iris = sklearn.datasets.load_iris()
    #X = iris['data'][:, 0:2]  # reduce dimensions so we can plot what happens.
    #k = 3
    #print(X.shape)
    X,y = data.get_data()
    clustering, centroids, cost = lloyds_algorithm(X, 3, 100)

if __name__ == "__main__":
    main()