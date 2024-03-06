# COUNTRIES VIEW
This Docker image encapsulates a Flask application that serves a fullscreen map featuring countries colored in varying shades of blue, reflecting the frequency of requests received from IP addresses in each country to the web server.

Powered by the Folium Python library, this application leverages Leaflet.js to dynamically generate the map. Folium, with its Leaflet.js integration, also provides support for different overlays.

The application utilizes a GeoJSON overlay to depict country borders. Employing a SQL view, it dynamically colors the map based on the specified criteria, creating a visual representation of web traffic patterns.
