import json
import jsonpath


def read_locator_value_from_json(locatorname):
    file = open("./JsonWork/Elements.json")
    response = json.loads(file.read())
    locator_value = jsonpath.jsonpath(response, locatorname)
    # 값이 리스트이기 때문에 0인덱스 지정
    return locator_value[0]
