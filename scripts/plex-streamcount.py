import requests
import json

url = "http://xkcd.com/info.0.json"
tautulli = 'http://ultiplex.co:8181/api/v2?apikey=013f151127384a119840afc191f4c049&cmd=get_activity'

response = requests.request("GET", tautulli)
data = response.json()

activestreams = data['response']['data']['sessions']
streamcount = data['response']['data']['stream_count']
streamtranscode = data['response']['data']['stream_count_transcode']
directplay = data['response']['data']['stream_count_direct_play']
dirctstream = data['response']['data']['stream_count_direct_stream']
totalbandwith = data['response']['data']['total_bandwidth']
bandwith = round(totalbandwith / 1024 , 2)

print("Total Streams: " + streamcount)
