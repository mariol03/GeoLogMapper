#!/usr/bin/python3
import sys
import signal
import mariadb
from datetime import datetime
from telegram import TelegramAPI
from IPcheck import IPchecker

# Handle SIGTERM signal
def signalHandler(signum,frame):
    connection.commit()
    cursor.close()
    connection.close()
    API.sendMessage("Log Scrapper Finalizado")

# Connection params
conn_params= {
    "user" : "python",
    "password" : "Welcome1",
    "host" : "DB",
    "database" : "pythontests"
}

# Creating telegram API object 
API = TelegramAPI("null",'null')

# Creating connection object
connection = mariadb.connect(**conn_params)
cursor = connection.cursor()

# Creating IPchecker object
checker = IPchecker()

# Sending a initalization message to telegram
API.sendMessage("Log Scrapper inciado")

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
            status = API.sendMessage(text)
            print(status.text)


