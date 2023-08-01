import requests
import sys
#in bash use curl instead of requests

api_url = "https://api.chucknorris.io/jokes/random"
response = requests.get(api_url)
json_obj = response.json()
print(json_obj["value"])

#modify the script and send the url as arguments
if len(sys.argv)!=2:
  print("wrong arguments")
  sys.exit()
if len(sys.argv)==1 : #making sure that this is not null
  api_url_2 = sys.arg[1] #(arg[0] is the filename)
  response_2 = requests.get(api_url)
  json_obj_2 = response.json()
  print(json_obj_2["value"])

print("wrong API URL")

#or using exceptions
'''try:
  api_url_2 = sys.arg[1] #(arg[0] is the filename)
  response_2 = requests.get(api_url)
  json_obj_2 = response.json()
  print(json_obj_2["value"])
except '''