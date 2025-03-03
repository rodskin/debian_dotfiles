import requests

# Obtenir la localisation via l'adresse IP
geo_response = requests.get("http://ip-api.com/json/")
geo_data = geo_response.json()

latitude = geo_data['lat']
longitude = geo_data['lon']
city = geo_data['city']

print(f"Latitude: {latitude}, Longitude: {longitude}, City: {city}")

# Utiliser les coordonnées pour appeler OpenWeatherMap
api_key = "7c4e62a7e3aabc62120b09bd020c47a2"
weather_url = f"https://api.openweathermap.org/data/2.5/weather?q={city}&appid={api_key}&units=metric"

weather_response = requests.get(weather_url)
weather_data = weather_response.json()

print(weather_data)

