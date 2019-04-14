# 3D-Model-Retrieval

### NEED to setup opencv, follow setup instruction of https://github.com/zddhub/opensse

### Delete release folder under /opensse-master by:
rm -r opensse-master/release

### rebuild
mkdir release
cd release
cmake ..
make
make install

### Packages to be installed:
pip install flask


### Run the program;
export FLASK_ENV=development

flask run


### Current Feature:
* Upload a file and server save to query folder with name query.png (only support uploading png right now)
* Draw a figure on the sketchpad. When query button is clicked, the figure is converted to png and send to server with same file path: query/query.png
* Keyword filtering not working. Only UI is added
