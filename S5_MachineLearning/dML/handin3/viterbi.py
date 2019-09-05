import numpy as np
import math
import simple_testmodels as tm


def translate_indices_to_observations(indices):
    mapping = ['A', 'C', 'G', 'T']
    return ''.join(mapping[idx] for idx in indices)


def translate_observations_to_indices(obs):
    mapping = {'a': 0, 'c': 1, 'g': 2, 't': 3}
    return [mapping[symbol.lower()] for symbol in obs]


def translate_path_to_indices(path):
    return list(map(lambda x: int(x), path))


def translate_indices_to_path(indices):
    return ''.join([str(i) for i in indices])


def joint_prob(model, x, z):
    init_probs = model.init_probs
    trans_probs = model.trans_probs
    emission_probs = model.emission_probs

    starting = init_probs[z[0]]
    trans = [trans_probs[z[n - 1]][z[n]] for n in range(1, len(z))]
    trans = np.prod(trans)
    emission = [emission_probs[z[n]][x[n]] for n in range(len(x))]
    emission = np.prod(emission)
    return starting * trans * emission


def log(x):
    if x == 0:
        return float('-inf')
    return math.log(x)


def joint_prob_log(model, x, z):
    init_probs = model.init_probs
    trans_probs = model.trans_probs
    emission_probs = model.emission_probs

    log_start = log(init_probs[z[0]])
    log_trans = [log(trans_probs[z[n - 1]][z[n]]) for n in range(1, len(z))]
    log_trans = sum(log_trans)
    log_emission = [log(emission_probs[z[n]][x[n]]) for n in range(len(x))]
    log_emission = sum(log_emission)

    return log_start + log_trans + log_emission


def test_length_for_log(model):
    x_long, z_long = tm.get_long_dataset()
    prob = 0
    for i in range(1, len(x_long), 1):
        x = x_long[:i]
        z = z_long[:i]

        prob = joint_prob(model, x, z)
        if prob == 0.0:
            print("log is necessary with {0} length input and longer".format(i))
            break


def make_table(m, n):
    """Make a table with `m` rows and `n` columns filled with zeros."""
    return np.array([[0] * n for _ in range(m)], dtype=float)


# Assumes x is indices
def compute_w(model, x):
    k = len(model.init_probs)
    n = len(x)

    w = make_table(k, n)

    init_probs = model.init_probs
    trans_probs = model.trans_probs
    emission_probs = model.emission_probs

    for case in range(n):
        for state in range(k):
            if case == 0:
                w[state][0] = init_probs[state] * emission_probs[state][x[0]]
            else:
                w[state][case] = emission_probs[state][x[case]] * \
                                 np.max([w[last_state][case - 1] * trans_probs[last_state][state] for last_state in
                                         range(k)])

    return w


def make_log_table(m, n):
    return [[float('-inf')] * n for _ in range(m)]


def compute_w_log(model, x):
    k = len(model.init_probs)
    n = len(x)

    w = np.full((k, n), fill_value=float('-inf'), dtype=float)

    init_probs = model.init_probs
    trans_probs = model.trans_probs
    emission_probs = model.emission_probs

    for case in range(n):
        for state in range(k):
            if case == 0:
                w[state][0] = log(init_probs[state]) + log(emission_probs[state][x[0]])
            else:
                w[state][case] = log(emission_probs[state][x[case]]) + \
                                 np.max([w[last_state][case - 1] + log(trans_probs[last_state][state]) for last_state in
                                         range(k)])

    return w


def opt_path_prob_log(w):
    width = np.size(w[0])
    return np.max(w[:, width - 1])


def backtrack_log(model, w, x):
    length = np.size(w[0])
    states = np.size(w, axis=0)

    trans_probs = model.trans_probs
    emission_probs = model.emission_probs

    z = np.empty(length, dtype=int)
    z[length - 1] = np.argmax(w[:, length - 1])
    for n in reversed(range(length - 1)):
        emission = log(emission_probs[z[n + 1]][x[n + 1]])
        list = [emission * w[state][n] * log(trans_probs[state][z[n + 1]]) for state in range(states)]
        z[n] = np.argmax(list)
    return translate_indices_to_path(z)


def opt_path_prob(w):
    width = np.size(w[0])
    return np.max(w[:, width - 1])


def backtrack(model, w, x):
    length = np.size(w[0])
    states = np.size(w, axis=0)

    trans_probs = model.trans_probs
    emission_probs = model.emission_probs

    z = np.empty(length, dtype=int)
    z[length - 1] = np.argmax(w[:, length - 1])
    for n in reversed(range(length - 1)):
        emission = emission_probs[z[n + 1]][x[n + 1]]
        list = [emission * w[state][n] * trans_probs[state][z[n + 1]] for state in range(states)]
        z[n] = np.argmax(list)
    return translate_indices_to_path(z)


if __name__ == "__main__":
    # get datasets and translate
    x_short, z_short = tm.get_short_dataset()
    x_short = translate_observations_to_indices(x_short)
    z_short = translate_path_to_indices(z_short)
    x_long, z_long = tm.get_long_dataset()
    x_long = translate_observations_to_indices(x_long)
    z_long = translate_path_to_indices(z_long)

    model = tm.get_7_state_model()
    prob = joint_prob(model, x_short, z_short)
    # print('Joint probability: {0}'.format(prob))
    log_prob = joint_prob_log(model, x_short, z_short)
    # print('Log_joint probability: {0}, {1}'.format(log_prob, math.exp(log_prob)))

    x = x_long
    w = compute_w_log(model, x)
    #print("w of 7_state: {0}".format(w))
    opt_path = opt_path_prob_log(w)
    #print(opt_path)
    z_viterbi = backtrack_log(model, w, x)
    z = translate_path_to_indices(z_viterbi)
    #print(z_viterbi)
    joint_prob = joint_prob_log(model, x, z)
    print("Path Probabilit: {0}, Joint probability: {1}".format(opt_path, joint_prob))
