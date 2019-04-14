import subprocess

def main():
	# bashCommand = "sse search -i index_file -v vocabulary -f filelist -n 10"
	filename = "/Users/junyuewu/Desktop/VisualDbFinal/3D-Model-Retrieval/query/query.jpg"
	print(filename)
	bashCommand = "sse search -i index_file -v vocabulary -f filelist -n 10"
	bashCommand += filename + " > result.txt"
	bashCommand = bashCommand.split()
	# print(bashCommand)
	output = subprocess.call(bashCommand)

if __name__ == "__main__":
	main()