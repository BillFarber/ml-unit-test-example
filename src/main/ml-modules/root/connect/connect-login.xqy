xquery version "1.0-ml";
import module namespace login-lib = "http://billfarber.marklogic.com/login-lib" at "/connect/login-lib.xqy";

let $_ := xdmp:log("connect-login")

let $login-response := login-lib:login(("invoke-role", "foo-role"))
let $_ := xdmp:security-assert("http://marklogic.com/xdmp/privileges/any-collection", "execute")

let $target-handler := xdmp:get-request-field("target-handler")

let $_ := xdmp:log(("target-handler", $target-handler))
return xdmp:invoke($target-handler)