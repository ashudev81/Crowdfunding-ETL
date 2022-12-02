from flask import Flask, jsonify


app = Flask(__name__)


@app.route("/")
def index():
    print("I am back end")
    return"Hellow I am front End"

@app.route("/contact")
def contactus():
    print("I am back end")
    return"Hellow what I can do for you"

@app.route("/api/v1/hello")
def api_hello():
    my_info = ["Ashish","sfotware eng."]
    print("I am back end from api")
    return jsonify(my_info)

if__name__=="__main__":
    app.run(debug=True)

