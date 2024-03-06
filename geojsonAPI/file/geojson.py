import subprocess
import json
from flask import Flask

app = Flask("__name__")

@app.route("/get10m")
def get10m():
    subprocess.run(["bash", "/usr/bin/getgeojson.sh", "10m"],stdout = subprocess.DEVNULL, stderr = subprocess.DEVNULL)
    file = json.loads(open("ne_10m_admin_0_countries.geo.json","r").read())
    return file

@app.route("/get50m")
def get50m():
    subprocess.run(["bash", "/usr/bin/getgeojson.sh", "50m"],stdout = subprocess.DEVNULL, stderr = subprocess.DEVNULL)
    file = json.loads(open("ne_50m_admin_0_countries.geo.json","r").read())
    return file

@app.route("/get110m")
def get110m():
    subprocess.run(["bash", "/usr/bin/getgeojson.sh", "110m"],stdout = subprocess.DEVNULL, stderr = subprocess.DEVNULL)
    file = json.loads(open("ne_110m_admin_0_countries.geo.json","r").read())
    return file