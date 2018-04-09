from flask import Flask, render_template, request, json

app = Flask(__name__)


@app.route('/')
def main():
    return render_template('index.html')


@app.route('/showSignUp')
def signup():
    return render_template('signup.html')


@app.route('/signUp',methods=['POST'])
def signUp():
    # read the posted values from the UI
    _name = request.form['inputName']
    _email = request.form['inputEmail']
    _password = request.form['inputPassword']

    # validate the received values
    if _name and _email and _password:
        return json.dumps({'html': '<span>All fields good !!</span>'})
    else:
        return json.dumps({'html': '<span>Enter the required fields</span>'})


if __name__ == '__main__':
    app.run()
