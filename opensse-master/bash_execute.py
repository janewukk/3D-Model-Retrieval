import subprocess

def main():
	# bashCommand = "sse search -i index_file -v vocabulary -f filelist -n 10"
	bashCommand = "sse search -i index_file -v vocabulary -f filelist -n 10 /Users/junyuewu/Desktop/3D-Model-Retrieval/query/query.jpg"
	bashCommand = bashCommand.split()
	# print(bashCommand)
	output = subprocess.call(bashCommand)

if __name__ == "__main__":
	main()