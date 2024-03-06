from flask import Flask, render_template_string
from sqlalchemy import create_engine
import pandas
import folium
import requests

con = create_engine("mariadb+pymysql://python:Welcome1@DB/pythontests?charset=utf8mb4")
app = Flask(__name__)

@app.route("/")
def fullscreen():
    """Simple example of a fullscreen map."""
    mapa = folium.Map(tiles="cartodb positron",zoom_start=3, location=[15.00,0.00])
    geojson = requests.get("http://geojsonAPI/get110m").json()
    datos = pandas.read_sql(sql="select country, timesFromCountry from countries",con=con)
    folium.Choropleth(geo_data=geojson,data=datos,columns=["country","timesFromCountry"], key_on="feature.properties.ISO_A3").add_to(mapa)
    return mapa.get_root().render()
