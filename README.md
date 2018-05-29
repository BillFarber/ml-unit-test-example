# ml-unit-test-example

# Quick Start
### Deploy the application
```
gradle mlDeploy
```
### Gradle-based XQuery unit tests
```
gradle mlUnitTest
```
Three tests are run, and one should fail, so you can see what a failed test looks like.
### Web-based Test Runner
List the tests - http://localhost:8135/v1/resources/ml-unit-test

Run a test suite - http://localhost:8135/v1/resources/ml-unit-test?rs:func=run&rs:suite=My%20Tests

### Custom REST endpoint using custom rewriter
http://localhost:8137/datahub/kofax/document/foo

### SoapUI
In SoapUI, import the project file
```
File->Import Project
Choose REST-Project-1-soapui-project.xml
```
Inside SoapUI you can use the requests to exercise the custom endpoint with a PUT and a GET.
