# flask-google-maps-location

![alt text](https://github.com/ridwands/flask-google-maps-location/blob/master/preview.png?raw=true)

## Create API KEY AND Enable MAPS JAVASCRIPT API
```
https://developers.google.com/maps/documentation/javascript/get-api-key?hl=id
```
Put API KEY to config.py
```
API_KEY="YOUR_API_KEY"
```

## Change Your Location Latitude And Longitude
Go to templates/index.html and change it
```
 {{"decoupled-map"|googlemap_js(-6.212915, 107.159674)}} {{sndmap.js}}
 ```
## Install Dependencies
```
pip install -r requirements.txt
```
## Running Application
```
python main.py
```

