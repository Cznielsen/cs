import numpy as np


def f1(predicted, labels):
    n, = predicted.shape
    assert labels.shape == (n,)
    r = np.max(predicted) + 1
    k = np.max(labels) + 1

    # Implement the F1 score here
    # YOUR CODE HERE
    #prediction = [np.sum(i) for i in labels] / [np.sum(i) for i in predicted]

    #print("r:", r, "\nk:", k)
    #print("\nlabels:\n", labels)
    #print("\npredicted:\n", predicted)

    contingency = np.zeros((r, k), dtype=int)
    for p in range(n):
        contingency[predicted[p], labels[p]] += 1

    prediction = np.zeros(r)
    for i in range(r):
        i_max = np.max(contingency[i])
        i_sum = np.sum(contingency[i])
        if i_sum == 0:
            prediction[i] = 1
        else:
            prediction[i] = i_max / i_sum

    # recall = np.max(contingency, axis=1) / np.sum(contingency, axis=0)

    recall = np.zeros(r)
    for i in range(r):
        j = np.argmax(contingency[i])
        recall[i] = contingency[i, j] / sum(contingency[:, j])

    #print("contingency table:\n", contingency)
    #print("fake_sum:", np.max(contingency, axis=1))
    #print("real_sum:", np.sum(contingency, axis=1))
    #print("prediction:", prediction)
    #print("recall:", recall)
    F_individual = (2 * prediction * recall) / (prediction + recall)

    F_overall = 1 / r * np.sum(F_individual)



    #print("F_individual:", F_individual)
    #print("F_overall:", F_overall)
    # END CODE

    assert contingency.shape == (r, k)
    return F_individual, F_overall, contingency
