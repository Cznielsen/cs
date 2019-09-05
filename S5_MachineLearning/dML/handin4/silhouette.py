import numpy as np
import sklearn.metrics
import load_data
import EM_algo
import lloyds_algo
import pandas

def silhouette(data, clustering):
    n, d = data.shape
    k = np.unique(clustering)[-1] + 1

    # YOUR CODE HERE
    a = np.zeros(n)
    b = np.zeros(n)
    S = np.zeros(n)

    def add_size(x):
        clusters_size[x] += 1

    clusters = np.array(
        [[idx if cluster == this_c else (n + 1) for idx, cluster in enumerate(clustering)] for this_c in range(k)])
    clusters = np.sort(clusters, axis=1)
    clusters_size = np.zeros(k, dtype=int)
    [add_size(x) for x in clustering]

    def average_cluster(cluster, x):
        x_cluster_size = clusters_size[cluster]
        if x_cluster_size == 0:
            return float('inf')
        else:
            x_cluster = clusters[cluster, :(x_cluster_size - 1)]
            s = sum([np.linalg.norm(data[x] - data[p]) for p in x_cluster]) / x_cluster_size
            return s

    for x in range(n):
        x_cluster = clustering[x]
        a[x] = average_cluster(x_cluster, x)
        b[x] = np.amin([average_cluster(cluster, x) for cluster in range(k) if cluster != x_cluster])

        S[x] = (b[x] - a[x]) / max(a[x], b[x])

    silh = np.average(S)
    # END CODE
    return silh

def main():
    x, y = load_data.get_data()

    results = np.zeros((8, 3))
    for k in range(2, 10):
        means, covs, probs_c, llh = EM_algo.em_algorithm(x, k, 50)
        clustering = EM_algo.compute_em_cluster(means, covs, probs_c, x)
        #sk = sklearn.metrics.silhouette_score(x, clustering)
        em_sc = silhouette(x, clustering)
        results[k-2, 0] = em_sc
        #rint(k, em_sc)

        clustering, centroids, cost = lloyds_algo.lloyds_algorithm(x, k, 50)
        lloyd_sc = silhouette(x, clustering)
        #sk = sklearn.metrics.silhouette_score(x, clustering)
        results[k-2, 1] = lloyd_sc
        #print(k, lloyd_sc)

        means, covs, probs_c, llh = EM_algo.em_algorithm(x, k, 50)
        clustering = EM_algo.compute_em_cluster(means, covs, probs_c, x)
        # sk = sklearn.metrics.silhouette_score(x, clustering)
        em_sc = silhouette(x, clustering)
        results[k - 2, 2] = em_sc


    dataframe = pandas.DataFrame(data=results, columns=("EM", "Lloyds","Combination"), index=range(2, 10))
    dataframe.to_csv('data/silhouette.csv')
    return

if __name__ == "__main__":
    main()