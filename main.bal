import ballerina/http;

type Greeting record {|
    string to;
    string content;
|};



service http:Service / on new http:Listener() {
    resource function get greeting() returns string {
        string message = "Hello 4";
        return message;
    }
}
