import std.stdio : stdout;

import lib2;
import stdx.data.json;

int main(string[] args)
{
    string json = "{}";

    // Serialize to JSON
    auto jvResult = doStuffToGetJSONValue(json);

    // Write state to file
    stdout.writeln(jvResult.toJSON());

    return 0;
}
