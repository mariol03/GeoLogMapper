import subprocess
import json
from flask import Flask

app = Flask("__name__")
script = "/usr/bin/getgeojson.sh"

@app.route("/get10m")
def get10m():
    subprocess.run(["bash", script, "10m"],stdout = subprocess.DEVNULL, stderr = subprocess.DEVNULL)
    file = json.loads(open("ne_10m_admin_0_countries.geo.json","r").read())
    return file

@app.route("/get50m")
def get50m():
    subprocess.run(["bash", script, "50m"],stdout = subprocess.DEVNULL, stderr = subprocess.DEVNULL)
    file = json.loads(open("ne_50m_admin_0_countries.geo.json","r").read())
    return file

@app.route("/get110m")
def get110m():
    subprocess.run(["bash", script, "110m"],stdout = subprocess.DEVNULL, stderr = subprocess.DEVNULL)
    file = json.loads(open("ne_110m_admin_0_countries.geo.json","r").read())
    return file