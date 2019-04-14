from flask import Flask, render_template,request
import json
from base64 import b64decode
import io
import subprocess

app = Flask(__name__)

@app.route("/")
def hello():
	return render_template('index.html')

def query():
	# bashCommand = "sse search -i index_file -v vocabulary -f filelist -n 10"
	bashCommand = "python3 opensse-master/bash_execute.py"
	bashCommand = bashCommand.split()
	# print(bashCommand)
	output = subprocess.call(bashCommand)
	outfile = open("opensse-master/result.txt", 'r')
	result_model = []
	for line in outfile:
		contents = line.split()
		if contents[0] != "read":
			model_dic = {}
			model_dic["score"] = contents[0]
			model_dic["filepath"] = contents[1]
			result_model.append(model_dic)
	print(result_model)
	return result_model
	


@app.route("/draw", methods=['POST'])
def process_draw_data():
	data = json.loads(request.data)
	keyword = data['keyword']
	image = data['image']
	header, encoded = image.split(",", 1)
	image_content = b64decode(encoded)
	with open("query/query.png", "wb") as f:
		f.write(image_content)

	data_back = query()
	return json.dumps(data_back)



@app.route('/upload', methods=['POST'])
def process_upload_data():
	file = request.files["file"]
	file.save("query/query.jpg")
	data_back = query()
	return json.dumps(data_back)





