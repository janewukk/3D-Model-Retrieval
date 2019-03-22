from flask import Flask, render_template,request
import json
from base64 import b64decode
import io

app = Flask(__name__)

@app.route("/")
def hello():
	return render_template('index.html')

def query(filename):
	f = open(filename)
	## to be implemented

@app.route("/draw", methods=['POST'])
def process_draw_data():
	data = json.loads(request.data)
	keyword = data['keyword']
	image = data['image']
	header, encoded = image.split(",", 1)
	image_content = b64decode(encoded)
	with open("query/query.png", "wb") as f:
		f.write(image_content)

	query("query/query.png")
	data_back = {
		"image": [],
		"rank": []
	}
	return json.dumps(data_back)

@app.route('/upload', methods=['POST'])
def process_upload_data():
	file = request.files["file"]
	file.save("query/query.png")
	query("query/query.png")
	data_back = {
		"image": [],
		"rank": []
	}
	return json.dumps(data_back)