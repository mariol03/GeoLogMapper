#!/usr/bin/python3
import sys
import signal
import mariadb
import os
from datetime import datetime
from IPcheck import IPchecker

# Handle SIGTERM signal
def signalHandler(signum,frame):
    connection.commit()
    cursor.close()
    connection.close()

# Connection params
conn_params= {
    "user" : os.getenv("DB_USER"),
    "password" : os.getenv("DB_PASS"),
    "host" : os.getenv("DB_HOST"),
    "database" : os.getenv("DB_NAME")
}

# Creating connection object
connection = mariadb.connect(**conn_params)
cursor = connection.cursor()

# Creating IPchecker object
checker = IPchecker()

# Handling SIGTERM signal
signal.signal(signal.SIGTERM,signalHandler)

# stdin loop
for line in sys.stdin:
    if not line == '':
        try:
            line_clean = line.split("[")
            ip = line_clean[0].split(" ")[0]
            line_clean = line_clean[1].split("]")
            time = datetime.strptime(line_clean[0],"%d/%b/%Y:%H:%M:%S %z")
            msg = line_clean[1]
            data = (ip,time,msg)
            cursor.execute("INSERT INTO Apache2Logs(ip,datetime,msg) VALUES(%s,%s,%s)",data)
            if checker.check(ip):
                r = checker.geolocate(ip)
                checkdata = (ip,r["country"],r["lat"],r["lon"],r["countryCode"])
                cursor.execute("INSERT INTO geolocatedips VALUES (%s,%s,%s,%s,%s)",checkdata) 
            connection.commit()
        except Exception as e:
            text = "Error " + str(e)
            open("error.log","a").write(text + "\n")
            print(status.text)


