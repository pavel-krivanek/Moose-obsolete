parsing
parse: aStringOrStream documentURI: aURIString
	"Parses the document in the string or stream argument treating the specified
	URI as the base URI of the document."

	^ (self
		on: aStringOrStream
		documentURI: aURIString) parseDocument