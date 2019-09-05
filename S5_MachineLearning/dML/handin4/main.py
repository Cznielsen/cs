import EM_algo
import lloyds_algo
import silhouette
import f1
import sklearn.datasets

def main():
    # Load the Iris data set
    X, y = sklearn.datasets.load_iris(True)
    X = X[:, 0:2]  # reduce to 2d so you can plot if you want
    # print(X.shape, y.shape)

    #clustering, centroids, cost = lloyds.lloyds_algorithm(X, 3, 100)

    #f1.f1(clustering, y)

    for k in range(2, 10):
        means, covs, probs_c, llh = EM_algo.em_algorithm(X, k, 50)
        clustering = EM_algo.compute_em_cluster(means, covs, probs_c, X)
        indi, over, con = f1.f1(clustering, y)
        print("#### EM ####\nClusters:", k, "\nF_overall:", over, "\n")

        clustering, centroids, cost = lloyds_algo.lloyds_algorithm(X, k, 50)
        indi, over, con = f1.f1(clustering, y)
        print("#### Lloyds ####\nClusters:", k, "\nF_overall:", over, "\n")

    # (optional) Try the lloyd's initialized EM algorithm.

if __name__ == "__main__":
    main()