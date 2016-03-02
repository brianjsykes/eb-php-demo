*** Settings ***
Documentation    Simple demonstration of HttpLibrary.HTTP Library tests
Library  HttpLibrary.HTTP

*** Variables ***
${URL}    http://cpdemoapp-staging.us-east-1.elasticbeanstalk.com/

*** Test Cases ***
get request test
    create http context  ${URL}
    HttpLibrary.HTTP.GET  /get
    log response body
    response status code should equal  200
