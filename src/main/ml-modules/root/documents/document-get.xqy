xquery version "1.0-ml";

(: Copyright 2011-2018 MarkLogic Corporation.  All Rights Reserved. :)

import module namespace parameters = "http://marklogic.com/rest-api/endpoints/parameters"
at "/MarkLogic/rest-api/endpoints/parameters.xqy";

import module namespace eput = "http://marklogic.com/rest-api/lib/endpoint-util"
at "/MarkLogic/rest-api/lib/endpoint-util.xqy";

declare default function namespace "http://www.w3.org/2005/xpath-functions";
declare option xdmp:mapping "false";

declare option xdmp:transaction-mode "query";

let $headers     := eput:get-request-headers()
let $method      := xdmp:get-request-method()
let $params      := map:new()
    =>parameters:query-parameter("name",true(),false())

let $document-name := map:get($params, "name")
return xdmp:log(concat("Requested Document: ",$document-name))
