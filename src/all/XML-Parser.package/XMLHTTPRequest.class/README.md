This is an abstract base class for HTTP requests. Subclasses need to implement #basicGetResponseUpToLimit:decoding: to return the correct XMLHTTPResponse object or raise an exception if an HTTP/network error happens or if the response is too large.

These classes implement the #get/#getUpToLimit:decoding: and #streamGet/#streamGetUpToLimit:decoding: interface of XMLURI.