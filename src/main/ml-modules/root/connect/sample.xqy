xquery version "1.0-ml";

let $name := xdmp:get-request-field("name")

let $_ := xdmp:set-response-content-type("application/xml")
let $_ := xdmp:set-response-code(200,"Ok")
return
    <Response>
        <LoginResponse>Sample</LoginResponse>
        <Parameters>
            <Name>{$name}</Name>
        </Parameters>
    </Response>