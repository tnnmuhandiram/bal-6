import ballerina/http;
import ballerina/io;

type Greeting record {|
    string to;
    string content;
|};

configurable int port = 9090;

service http:Service / on new http:Listener(port) {
    resource function get greeting() returns string {
        string message = "Hello";
        io:println(int:avg(10, 20, 30, 40));
        return message;
    }
}
