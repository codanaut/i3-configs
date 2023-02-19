import requests
import json

url = "http://api.openweathermap.org/data/2.5/weather?id=5765751&APPID=b9dbc4a81bf8f340e5a2a2dab14d6940&units=imperial"

response = requests.request("GET", url)
data = response.json()
x = data
temp = round(data['main']['temp'])
weather = data['weather'][0]['description']

print(str(temp) + "°f " + weather)