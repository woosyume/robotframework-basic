import requests
import json
import jsonpath

odics = '{"K1": "Val1", "K2": "Val2"}'
result = json.loads(odics)
print(result["K1"])

api_url = "https://reqres.in/api/users"
resp = requests.get(api_url)
print(resp.text)

assert resp.status_code == 200
parsedResp = json.loads(resp.text)
print(parsedResp)