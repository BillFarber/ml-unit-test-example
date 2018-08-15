module namespace login-lib = "http://billfarber.marklogic.com/login-lib";

declare function login-lib:login($role as xs:string*)
{
	xdmp:login("minimal", (), fn:false(), $role)
};
