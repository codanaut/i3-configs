import requests
import json

# key is made with temp mail address, if it stops working just make another one!

url = "http://api.openweathermap.org/data/2.5/weather?id=5765751&APPID=f0e83cccde45e4d31ec2d240584ab07d&units=imperial"

response = requests.request("GET", url)
data = response.json()
x = data
temp = round(data['main']['temp'])
weather = data['weather'][0]['description']

print(str(temp) + "°f " + weather)