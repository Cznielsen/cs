

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



def writeToFile_path(path,filen,x):

	filen.write(">pred-ann"+str(x)+"\n")
	for i in path:
			filen.write(i)
	filen.write('\n')








def main():
	filen = open('pred-ann-all.fa', 'w')
	for i in range(6,11):
		pred_ann_fasta_filename = 'pred-ann' + str(i) + '.fa'
		pred_ann_name_in_file = 'pred-ann' + str(i)
		print(pred_ann_fasta_filename)
		print(pred_ann_name_in_file)
		pred_ann_fasta_file = read_fasta_file(pred_ann_fasta_filename)
		sequence = pred_ann_fasta_file[pred_ann_name_in_file]
		writeToFile_path(sequence, filen, i)
	filen.close()


if __name__ == "__main__":
    main()

