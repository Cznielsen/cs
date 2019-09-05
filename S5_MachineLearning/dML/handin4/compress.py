import scipy.misc
import matplotlib.pyplot as plt
import os
import numpy as np

def download_image(url):
    filename = url[url.rindex('/')+1:]
    try:
        with open(filename, 'rb') as fp:
            return scipy.misc.imread(fp) / 255
    except FileNotFoundError:
        import urllib.request
        with open(filename, 'w+b') as fp, urllib.request.urlopen(url) as r:
            fp.write(r.read())
            return scipy.misc.imread(fp) / 255
 
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

def compress_kmeans(im, k, T, name):
    height, width, depth = im.shape
    data = im.reshape((height * width, depth))
    clustering, centroids, score = lloyds_algorithm(data, k, 5)
    
    # make each entry of data to the value of it's cluster
    data_compressed = data
    
    for i in range(k): data_compressed[clustering == i] = centroids[i] 
    
    im_compressed = data_compressed.reshape((height, width, depth))
    
    # The following code should not be changed. 
    fig = plt.figure(frameon=False)
    ax = plt.Axes(fig, [0., 0., 1., 1.])
    ax.set_axis_off()
    fig.add_axes(ax)
    plt.imshow(im_compressed)
    plt.savefig("compressed.jpg")
    plt.show()
    
    original_size   = os.stat(name).st_size
    compressed_size = os.stat('compressed.jpg').st_size
    print("Original Size: \t\t", original_size)
    print("Compressed Size: \t", compressed_size)
    print("Compression Ratio: \t", round(original_size/compressed_size, 5))

def compress_facade(k=4, T=100):
    img_facade = download_image('https://i.ytimg.com/vi/4xgOWWfurpU/maxresdefault.jpg')
    compress_kmeans(img_facade, k, T, 'maxresdefault.jpg')
    
def main():
    compress_facade()

if __name__ == "__main__":
    main()