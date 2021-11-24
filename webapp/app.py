'''
    app.py
    Thomas Zeng and Cole Weinstein 8 November 2021

    Flask application for CS257 final project.
'''
import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/') 
def home():
    return flask.render_template('map_home_page.html')

@app.route('/country_info/')
def country_info():
    return flask.render_template('country_template.html')

@app.route('/language_info/')
def language_info():
    return flask.render_template('language_template.html')

@app.route('/about/')
def display_about():
    return flask.render_template('about.html')


if __name__ == '__main__':
    parser = argparse.ArgumentParser('An endangered languages application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)  