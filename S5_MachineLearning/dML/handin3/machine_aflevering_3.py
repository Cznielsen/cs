import math  
import numpy as np




def log(x):
    if x == 0:
        return float('-inf')
    return math.log(x)



class hmm:
    def __init__(self, init_probs, trans_probs, emission_probs):
        self.init_probs = init_probs
        self.trans_probs = trans_probs
        self.emission_probs = emission_probs


def map_path_to_labels():
	labels = []
	for i in range(43):
		if i == 0:
			labels.append("N")
		if 0<i<22:
			labels.append("C")
		if 21<i:
			labels.append("R")

	return labels

def translate_indices_to_observations(indices):
    mapping = ['a', 'c', 'g', 't']
    return ''.join(mapping[idx] for idx in indices)

def translate_path_to_indices(path):
    return list(map(lambda x: int(x), path))

def translate_indices_to_path(indices):
    return ''.join([str(i) for i in indices])


def translate_observations_to_indices(obs):
    mapping = {'a': 0, 'c': 1, 'g': 2, 't': 3}
    return [mapping[symbol.lower()] for symbol in obs]


def translate_labels_to_indices(obs):
    mapping = {'n': 0, 'c': 1, 'r': 2}
    return [mapping[symbol.lower()] for symbol in obs]

def translate_path_to_labels(indices):
	mapping = map_path_to_labels()
	return ''.join(mapping[idx] for idx in indices)	

def count_trasistions_and_emissions(K, D, x_long, z_long):
	countingKxK = np.zeros((K,K))
	countingKxD = np.zeros((D,K))
	countingK = np.zeros(K)
	z = 3
	z_long1 = translate_labels_to_indices(z_long)
	x_long1 = translate_observations_to_indices(x_long)
	
	def addToTransProb(x, z):
		countingKxK[x,z] = countingKxK[x,z] + 1

	def addToEmitProb(x, z):
		countingKxD[z,x] = countingKxD[z,x] + 1 

	def addToInitProb(x):
		countingK[x] = countingK[x] + 1


	for n in range(1,6):
		genome_fasta_filename = 'genome' + str(n) + '.fa'
		true_ann_fasta_filename = 'true-ann' + str(n) + '.fa'
		genome_name_in_file = 'genome' + str(n)
		true_ann_name_in_file = 'true-ann' + str(n)

		genome_fasta_file = read_fasta_file(genome_fasta_filename)
		true_ann_fasta_file = read_fasta_file(true_ann_fasta_filename)
		x_long = genome_fasta_file[genome_name_in_file]
		z_long = true_ann_fasta_file[true_ann_name_in_file]

		z = 3
		z_long1 = translate_labels_to_indices(z_long)
		x_long1 = translate_observations_to_indices(x_long)
	
		if(z_long[0] == "N"):
			addToInitProb(0)

		if(z_long[0] == "C"):
			addToInitProb(12)

		if(z_long[0] == "R"):
			addToInitProb(33)

	
		print('Training on file' + str(n))
		while z<=len(z_long)-6:
			checkIfStuck = True

			new = z_long[z]			
			old = z_long[z-1]
			if new == "N":

				
				if old == "N":
				
					checkIfStuck = False
					addToEmitProb(0,x_long1[z])
					addToTransProb(0,0)
					z = z + 1

				if old == "R":
					
					checkIfStuck = False
					if x_long[z-3:z] == "CAT":		
						addToEmitProb(34,x_long1[z-3])
						addToEmitProb(35,x_long1[z-2])
						addToEmitProb(36,x_long1[z-1])
						addToEmitProb(0,x_long1[z])

						addToTransProb(33,34)
						addToTransProb(34,35)
						addToTransProb(35,36)
						addToTransProb(36,0)
						z = z + 1

					elif x_long[z-3:z] == "CAC":
						addToEmitProb(37,x_long1[z-3])
						addToEmitProb(38,x_long1[z-2])
						addToEmitProb(39,x_long1[z-1])
						addToEmitProb(0,x_long1[z])

						addToTransProb(33,37)
						addToTransProb(37,38)
						addToTransProb(38,39)
						addToTransProb(39,0)
						z = z + 1				

					elif x_long[z-3:z] == "CAA":
						addToEmitProb(40,x_long1[z-3])
						addToEmitProb(41,x_long1[z-2])
						addToEmitProb(42,x_long1[z-1])
						addToEmitProb(0,x_long1[z])


						addToTransProb(33,40)
						addToTransProb(40,41)
						addToTransProb(41,42)
						addToTransProb(42,0)
						z = z + 1

					else: 
						z = z + 1


				if old == "C":
	 				
					checkIfStuck = False
					
					if x_long[z-3:z] == "TAG":
						
						addToEmitProb(14,x_long1[z-2])
						addToEmitProb(13,x_long1[z-3])
						addToEmitProb(15,x_long1[z-1])
						addToEmitProb(0,x_long1[z])

						addToTransProb(12,13)
						addToTransProb(13,14)
						addToTransProb(14,15)
						addToTransProb(15,0)
						z = z + 1


					elif x_long[z-3:z] == "TGA":
						
						addToEmitProb(16,x_long1[z-3])
						addToEmitProb(17,x_long1[z-2])
						addToEmitProb(18,x_long1[z-1])
						addToEmitProb(0,x_long1[z])
						addToTransProb(12, 16)
						addToTransProb(16, 17)
						addToTransProb(17, 18)
						addToTransProb(18, 0)
	 					
						z = z + 1
					elif x_long[z-3:z] == "TAA":
						
						addToEmitProb(19,x_long1[z-3])
						addToEmitProb(20,x_long1[z-2])
						addToEmitProb(21,x_long1[z-1])
						addToEmitProb(0,x_long1[z])


						addToTransProb(12,19)
						addToTransProb(19,20)
						addToTransProb(20,21)
						addToTransProb(21,0)
						z = z + 1
					else: 
						z = z + 1


			if new == "C":

				if old == "C":
					checkIfStuck = False
					addToEmitProb(12, x_long1[z])
					addToEmitProb(10, x_long1[z+1])
					addToEmitProb(11, x_long1[z+2])
					addToTransProb(12,10)
					addToTransProb(10,11)
					addToTransProb(11,12)
					z = z + 3
				if old == "N":
					checkIfStuck = False

					if x_long[z:z+3] == "ATG":
						addToEmitProb(1, x_long1[z])
						addToEmitProb(2, x_long1[z+1])
						addToEmitProb(3, x_long1[z+2])
						addToEmitProb(10, x_long1[z+3])
						addToEmitProb(11, x_long1[z+4])
						addToTransProb(0,1)
						addToTransProb(1,2)
						addToTransProb(2,3)
						addToTransProb(3,10)
						addToTransProb(10,11)
						addToTransProb(11,12)
						z = z + 6

					elif x_long[z:z+3] == "GTG":
						addToEmitProb(4, x_long1[z])
						addToEmitProb(5, x_long1[z+1])
						addToEmitProb(6, x_long1[z+2])
						addToEmitProb(10, x_long1[z+3])
						addToEmitProb(11, x_long1[z+4])
						
						addToTransProb(0,4)
						addToTransProb(4,5)
						addToTransProb(5,6)
						addToTransProb(6,10)
						addToTransProb(10,11)
						addToTransProb(11,12)
						z = z + 6					

					elif x_long[z:z+3] == "TTG":
						addToEmitProb(7, x_long1[z])
						addToEmitProb(8, x_long1[z+1])
						addToEmitProb(9, x_long1[z+2])
						addToEmitProb(10, x_long1[z+3])
						addToEmitProb(11, x_long1[z+4])
						
						addToTransProb(0,7)
						addToTransProb(7,8)
						addToTransProb(8,9)
						addToTransProb(9,10)
						addToTransProb(10,11)
						addToTransProb(11,12)
						z = z + 6

					else: 
						z = z + 6







			if new == "R":

				if old == "R":
					checkIfStuck = False
				
					addToEmitProb(33, x_long1[z])
					addToEmitProb(31, x_long1[z+1])
					addToEmitProb(32, x_long1[z+2])

					addToTransProb(33,31)
					addToTransProb(31,32)
					addToTransProb(32,33)

					z = z + 3

				if old == "N":
					checkIfStuck = False
					if x_long[z:z+3] == "TTA":
	 					addToEmitProb(22, x_long1[z])
	 					addToEmitProb(23, x_long1[z+1])
	 					addToEmitProb(24, x_long1[z+2])
	 					addToEmitProb(31, x_long1[z+3])
	 					addToEmitProb(32, x_long1[z+4])
						
	 					addToTransProb(0,22)
	 					addToTransProb(22,23)
	 					addToTransProb(23,24)
	 					addToTransProb(24,31)
	 					addToTransProb(31,32)
	 					addToTransProb(32,33)
	 					z = z + 6

					elif x_long[z:z+3] == "TCA":
	 					addToEmitProb(25, x_long1[z])
	 					addToEmitProb(26, x_long1[z+1])
	 					addToEmitProb(27, x_long1[z+2])
	 					addToEmitProb(31, x_long1[z+3])
	 					addToEmitProb(32, x_long1[z+4])
						
	 					addToTransProb(0,25)
	 					addToTransProb(25,26)
	 					addToTransProb(26,27)
	 					addToTransProb(27,31)
	 					addToTransProb(31,32)
	 					addToTransProb(32,33)

	 					z = z + 6
					elif x_long[z:z+3] == "CTA":
	 					addToEmitProb(28, x_long1[z])
	 					addToEmitProb(29, x_long1[z+1])
	 					addToEmitProb(30, x_long1[z+2])
	 					addToEmitProb(31, x_long1[z+3])
	 					addToEmitProb(32, x_long1[z+4])
						

	 					addToTransProb(0,28)
	 					addToTransProb(28,29)
	 					addToTransProb(29,30)
	 					addToTransProb(30,31)
	 					addToTransProb(31,32)
	 					addToTransProb(32,33)
	 					z = z + 6
					else: 
	 					z = z + 6

			
			if checkIfStuck:
	 			z = z + 1

	

	return countingK,countingKxK, countingKxD


def turn_Into_Percentages(K,D,x_long,z_long):
	init_probs, trans_probs, emission_probs = count_trasistions_and_emissions(K,D,x_long,z_long)
	sum_transprobs = np.sum(trans_probs, axis=0)
	sum_emission_probs = np.sum(emission_probs, axis=0)
	sum_init_probs = np.sum(init_probs)
	init_probs = np.divide(init_probs, sum_init_probs)
	emission_probs = np.divide(emission_probs,sum_emission_probs)
	trans_probs = np.divide(trans_probs , sum_transprobs)
	writeToFile(trans_probs, "Trans_count.txt", 43, 43)

	writeToFile(emission_probs, "emission_count.txt", 4, 43)	 

	return hmm(init_probs, trans_probs, emission_probs)



def make_table(m, n):
    """Make a table with `m` rows and `n` columns filled with zeros."""
    return np.array([[0] * n for _ in range(m)], dtype=float)




def compute_w_log(model, x):
	print('Computes w')
	k = len(model.init_probs)
	n = len(x)
	x = translate_observations_to_indices(x)
	w = np.full((k,n), float('-inf'))

	init_probs = model.init_probs
	trans_probs = model.trans_probs
	emission_probs = model.emission_probs

	def forListComp(case, state):
		if case == 0:
			w[state,case] = (init_probs[state]) + log(emission_probs[x[0],state])
		else:	
			w[state,case] =  log(emission_probs[x[case],state]) + np.max([w[pos, case-1] + log(trans_probs[pos,state]) for pos in range(len(w[:, case - 1]))])

	
	[[forListComp(case,state) for state in range(k)]for case in range(n)]
			
	writeToFile(w, "log_w.txt", k,n)
	return w

def opt_path_prob_log(model, x, z):
	pass

	
def backtrack_log(w, model, x):
	print('Computes path via backtracking')
	length = np.size(w[1])
	states = np.size(w, axis=0)
	x = translate_observations_to_indices(x)
	trans_probs = model.trans_probs
	emission_probs = model.emission_probs
	z = np.empty(length, dtype=int)
	z[length - 1] = np.argmax(w[:, length - 1])

	def forListComp(n):
		emission = emission_probs[x[n + 1],z[n + 1]]
		list = 	[log(emission) + w[state,n] + log(trans_probs[state,z[n + 1]]) for state in range(states)]
		z[n] = np.argmax(list)

	[forListComp(n) for n in reversed(range(length - 1))]
	print(np.size(w[1]))
	return z



def read_fasta_file(filename):
    """
    Reads the given FASTA file f and returns a dictionary of sequences.
    Lines starting with ';' in the FASTA file are ignored.
    """
    sequences_lines = {}
    current_sequence_lines = None
    with open(filename) as fp:
        for line in fp:
            line = line.strip()
            if line.startswith(';') or not line:
                continue
            if line.startswith('>'):
                sequence_name = line.lstrip('>')
                current_sequence_lines = []
                sequences_lines[sequence_name] = current_sequence_lines
            else:
                if current_sequence_lines is not None:
                    current_sequence_lines.append(line)
    sequences = {}
    for name, lines in sequences_lines.items():
        sequences[name] = ''.join(lines)
    return sequences


def writeToFile(matrix, name, k, d):
	filen = open(name, 'w')
	
	for i in range(d):
		for j in range (k):
			if matrix[j,i] > 999999:
				filen.write(str(matrix[j,i]) + '\t')
			else:
				filen.write(str(matrix[j,i]) + '\t')
		filen.write('\n')

	filen.close()


def writeToFile_path(path,x):
	filen = open('pred-ann'+str(x)+'.fa', 'w')
	a = 0
	filen.write(">pred-ann"+str(x)+"\n")
	for i in path:
			filen.write(i)
	print(len(path))
	filen.close


def main():
	count_trasistions_and_emissions = turn_Into_Percentages(43,4,"","")
	
	for i in range(5,6):
		filename = 'genome'+ str(i)+'.fa'
		genome_name = 'genome'+str(i)
		genome_file = read_fasta_file(filename)
		x_long = genome_file[genome_name]
		w = compute_w_log(count_trasistions_and_emissions, x_long)
		path = backtrack_log(w, count_trasistions_and_emissions, x_long)	
		trans_path = translate_path_to_labels(path)
		writeToFile_path(trans_path, i)


if __name__ == "__main__":
    main()

