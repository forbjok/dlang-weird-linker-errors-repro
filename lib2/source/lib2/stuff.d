module lib2.stuff;

import stdx.data.json;

JSONValue doStuffToGetJSONValue(string json) {
    return parseJSONValue(json);
}