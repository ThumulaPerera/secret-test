import ballerina/http;
import ballerina/os;

service / on new http:Listener(9090) {

    resource function get secrets() returns string {
        string secret1 = os:getEnv("SECRET1");
        string secret2 = os:getEnv("SECRET2");
        string secret3 = os:getEnv("SECRET3");
        string secret4 = os:getEnv("SECRET4");
        return "Secret1: " + secret1 + " Secret2: " + secret2 + " Secret3: " + secret3 + " Secret4: " + secret4;
    }
}
