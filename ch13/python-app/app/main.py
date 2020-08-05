from flask import Flask, render_template
import os
import atexit
import configparser
import cx_Oracle

# Read the configuration file for database connection properties
config = configparser.ConfigParser()
config.read_file(open("/etc/app/db.properties"))
db_username = config["DB_CONFIG"]["db_username"]
db_password = config["DB_CONFIG"]["db_password"]
db_service_name = config["DB_CONFIG"]["db_service_name"]

# Setup the database pool
pool = cx_Oracle.SessionPool(db_username, db_password, db_service_name
    , min=2, max=5, increment=1, encoding="UTF-8")

# Initialize the Flask application
app = Flask(__name__)

# Root path
@app.route("/")
def root():
    connection = pool.acquire()
    cursor = connection.cursor()
    sessions = cursor.execute("""
        select
            coalesce(title, '-') as title
            , coalesce(
                speaker_first_name || nvl2(speaker_last_name, ' ' || speaker_last_name, '')
                , '-'
              ) as speaker_name
            , session_start
            , session_end
            , location
        from vw_sessions
        order by session_start
    """).fetchall()
    pool.release(connection)
    return render_template(
        "home.html",
        title = "Agenda",
        sessions = sessions,
        hostname = os.environ.get("DOCKER_HOST")
    )

# Register an exit hook to close the database pool if it is still open.
@atexit.register
def shutdownPool():
    if pool is not None:
        print("Closing the pool.")
        pool.close()