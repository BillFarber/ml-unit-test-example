xquery version '1.0-ml';

(:
   Runs once when your suite is finished, to clean up after the suite's tests.
   If no suite-specific teardown is required, this file may be deleted.
:)
xdmp:document-delete("/test-article.xml")
               