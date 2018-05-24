xquery version "1.0-ml";

(: Copyright 2011-2018 MarkLogic Corporation.  All Rights Reserved. :)

import module namespace eput = "http://marklogic.com/rest-api/lib/endpoint-util"
at "/MarkLogic/rest-api/lib/endpoint-util.xqy";

declare default function namespace "http://www.w3.org/2005/xpath-functions";
declare option xdmp:mapping "false";

let $headers       := eput:get-request-headers()
let $method        := xdmp:get-request-method()
let $document-name := xdmp:get-request-field("name")
let $body          := xdmp:get-request-body()

let $_ := xdmp:log(("body:", $body))
let $_ := xdmp:document-insert($document-name, $body)

return (
    xdmp:set-response-code(200,"OK"),
    xdmp:set-response-content-type("application/xml"),
    xdmp:log(concat("Created Document: ", $document-name)),
    <Status>
        <Code>200</Code>
        <Message>OK</Message>
        <Details>Created Document: {$document-name}</Details>
    </Status>
)