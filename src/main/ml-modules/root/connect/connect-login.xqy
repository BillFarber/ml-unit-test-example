xquery version "1.0-ml";
import module namespace login-lib = "http://billfarber.marklogic.com/login-lib" at "/connect/login-lib.xqy";

let $_ := xdmp:log("connect-login")

let $login-response := login-lib:login("foo-role")
let $_ := xdmp:security-assert("http://marklogic.com/xdmp/privileges/any-collection", "execute")

let $_ := xdmp:set-response-content-type("application/xml")
let $_ := xdmp:set-response-code(200,"Ok")
return
    <Response><LoginResponse>{$login-response}</LoginResponse></Response>