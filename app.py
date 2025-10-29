from flask import Flask,render_template, request

app = Flask(__name__)

@app.route("/")
def index():
    data = request.args.get("data")
    return render_template('project1.html', data=data)

@app.route('/generate',methods=["POST"])
def generate():
    if request.method == "POST":
        first_name = request.form["first_name"]
        last_name = request.form["last_name"]
        job_titile = request.form["job_title"]

        response = f"{first_name} {last_name} {job_title}"
        return redierct(url_for("index", data=response))

if __name__ == '__main__' :
    app.run(debug=True)
