xquery version '1.0-ml';
import module namespace test = "http://marklogic.com/roxy/test-helper" at "/test/test-helper.xqy";

let $original-doc := test:get-test-file("sample.xml")
let $test-doc := fn:doc("/test-article.xml")

return test:assert-equal($original-doc, $test-doc)
