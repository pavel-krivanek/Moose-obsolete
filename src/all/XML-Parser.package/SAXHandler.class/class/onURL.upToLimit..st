instance creation
onURL: aURLString upToLimit: aMaxSize
	"Fetches a URL and returns new parser on the response content up to the
	input limit (use nil to disable) but doesn't parse it. If the URL has
	no scheme, it will be treated as a file path.

	Can be used to configure limited URL parsers with 'configuring' messages
	before parsing with parseDocument."

	^ (self
		on:
			"return an XMLDecodingReadStreamAdapter on the undecoded response
			so we can do our own looking at byte order marks and <?xml ...?>
			encoding attributes"
			(XMLDecodingReadStreamAdapter on:
				(aURLString asXMLURI
					streamGetUpToLimit: aMaxSize
					decoding: false))
		documentURI: aURLString) documentReadLimit: aMaxSize