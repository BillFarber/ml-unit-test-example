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

### Sample data and MLCP from ml-gradle
1) Sample data is in an arbitrary directory (src/main/ml-data). This data is not automatically loaded.
2) MLCP tasks are added to build.gradle to load the sample data.
3) A log4j.properties is included in the MLCP dependencies to enable logging during MLCP tasks.
4) [ml-gradle example](https://github.com/marklogic-community/ml-gradle/blob/master/examples/mlcp-project/build.gradle)

### Custom Search Constraints
There are two custom search options files in src/main/ml-modules/options: default.xml and tvm-connect-options.xml.
Because these files are in ml-modules/options, ml-gradle loads them as search options for the default REST server, not directly into the modules database.
Both options files define a collection constraint and slightly different return-* settings just to see the difference.
Because one is called "default.xml", it is used by the REST server as the default options.
The other file must be specified in the search URL if that is desired.

Examples:

[Default options, No constraint](http://localhost:8134/v1/search?q=shipping)

[Default options, company constraint](http://localhost:8134/v1/search?q=shipping%20company:A)

[tvm-connect-options, No constraint](http://localhost:8134/v1/search?options=tvm-connect-options&q=shipping)

[tvm-connect-options, company constraint](http://localhost:8134/v1/search?options=tvm-connect-options&q=shipping%20company:A)
