A base class for HTTP requests. Subclasses need to implement #basicGetUpToLimit:decoding: to return the HTTP response as a string or raise an exception if an HTTP/network error happens or the response is too large.

These classes implement the #get/#getUpToLimit:decoding: and #streamGet/#streamGetUpToLimit:decoding: interface of XMLURI.