from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route("/")
def root():
    return render_template(
        "base.html",
        title = "Load Balancer Demo",
        body_text = """
        Demonstrating the use of Load Balancers to support highly scalable web
        applications.
        """,
        hostname = os.environ.get('DOCKER_HOST')
    )