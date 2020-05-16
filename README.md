# flask-google-maps-location

## Create API KEY
```
https://developers.google.com/maps/documentation/embed/get-api-key
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