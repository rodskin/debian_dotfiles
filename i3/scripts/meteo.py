#!/usr/bin/env python3

import json
import urllib.request

# sign in at https://openweathermap.org/api to get an API KEY
APPID = "7c4e62a7e3aabc62120b09bd020c47a2"

# get you city ID at http://bulk.openweathermap.org/sample/
CITYID = "2988507" #PARIS
# Obtenir la localisation via l'adresse IP
with urllib.request.urlopen("http://ip-api.com/json/") as geo_url:
  geo_data = json.loads(geo_url.read().decode())
  LAT = geo_data['lat']
  LON = geo_data['lon']
  CITY = geo_data['city']

icon_tonnerre=""
icon_bruine=""
icon_pluie=""
icon_neige=""
icon_brouillard=""
icon_soleil=""
icon_nuageux=""

with urllib.request.urlopen("https://api.openweathermap.org/data/2.5/weather?q=" + CITY + "&units=metric&appid=" + APPID) as url:
  data = json.loads(url.read().decode())
  temp_color = "#FFFFFF"
  temp = data['main']['temp']
  if temp < 6:
    temp_color = "#00FFFF"
  elif 6 <= temp < 10:
    temp_color = "#00AAAA"
  elif 10 <= temp < 15:
    temp_color = "#FFA500"
  elif 15 <= temp < 27:
    temp_color = "#FFFF00"
  elif temp >= 27:
    temp_color = "#FF0000"

  str = "<span color='" + temp_color + "'>" + CITY + ": " + str(data['main']['temp']) + "°C</span> "
  # https://openweathermap.org/weather-conditions#Weather-Condition-Codes-2
  if int(data['weather'][0]['id']) >= 200 and int(data['weather'][0]['id']) < 300: # Group 2xx: Thunderstorm
    str += "<span color='#FF0000'>" + icon_tonnerre + "</span>"
  elif int(data['weather'][0]['id']) >= 300 and int(data['weather'][0]['id']) < 500: # Group 3xx: Drizzle
    str += "<span color='#3333FF'>" + icon_bruine + "</span>"
  elif int(data['weather'][0]['id']) >= 500 and int(data['weather'][0]['id']) < 600: # Group 5xx: Rain
    str += "<span color='#0000FF'>" + icon_pluie + "</span>"
  elif int(data['weather'][0]['id']) >= 600 and int(data['weather'][0]['id']) < 700: # Group 6xx: Snow
    str += "<span color='#FFFFFF'>" + icon_neige + "</span>"
  elif int(data['weather'][0]['id']) >= 700 and int(data['weather'][0]['id']) < 800: # Group 7xx: Atmosphere
    str += "<span color='#999999'>" + icon_brouillard + "</span>"
  elif int(data['weather'][0]['id']) == 800: # Group 800: Clear
    str += "<span color='#FFFF00'>" + icon_soleil + "</span>"
  elif int(data['weather'][0]['id']) > 800: # Group 80x: Clouds
    str += "<span color='#DDDDDD'>" + icon_nuageux + "</span>"
  print(str, end='')
