import ballerina/http;
import ballerina/os;

service / on new http:Listener(9090) {

    resource function get secrets() returns string {
        string secret1 = os:getEnv("SECRET1");
        string secret2 = os:getEnv("SECRET2");
        return "Secret1: " + secret1 + " Secret2: " + secret2;
    }
}
