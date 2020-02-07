from hello_app.webapp import app

if __name__ == '__main__':
    # app.run(host='0.0.0.0', port=5555)
    app.run(host='0.0.0.0', port=5000, debug=False)
