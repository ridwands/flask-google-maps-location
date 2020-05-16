from flask import Flask, render_template, request
from flask_googlemaps import GoogleMaps
from flask_googlemaps import Map
from flaskext.mysql import  MySQL
from config import Config
import pymysql

app = Flask(__name__, template_folder="templates")
app.config.from_object(Config)
GoogleMaps(app, key=app.config['API_KEY'])
mysql = MySQL()
mysql.init_app(app)


@app.route("/", methods=['GET', 'POST'])
def mapview():
    if request.method=='POST':
        try:
            lat = request.form.get('lat')
            lon = request.form.get('lon')
            name = request.form.get('name')
            conn = mysql.connect()
            cursor = conn.cursor(pymysql.cursors.DictCursor)
            query = "INSERT INTO my_friend_location (lat, lon, my_friend) VALUES (%s, %s, %s)"
            param = (lat, lon, name)
            cursor.execute(query, param)
            conn.commit()
        finally:
            cursor.close()
            conn.close()
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        query = "SELECT * FROM my_friend_location"
        cursor.execute(query)
        my_friend_location = cursor.fetchall()

        data = [
                
        ]
        for x in my_friend_location:
            location = {
                'icon': 'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
            }
            location['lat']=x['lat']
            location['lng']=x['lon']
            location['infobox']=x['my_friend']
            data.append(location)
        
        sndmap = Map(
            identifier="sndmap",
            lat=-6.212915,
            lng=107.159674,
            style= "height:400px;width:1208px;margin:0;",
            markers=data
        )
        return render_template('index.html', sndmap=sndmap, my_friend_location=my_friend_location)
    finally:
        cursor.close()
        conn.close()

if __name__ == "__main__":
    app.run(debug=True)