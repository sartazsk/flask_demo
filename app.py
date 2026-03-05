from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def home():
    return jsonify({"message": "Hello, World"}), 200


@app.route("/health")
def health():
    return jsonify({"status": "ok"}), 200
