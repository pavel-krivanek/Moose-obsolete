instance creation
on: aStringOrStream documentURI: aURIString
	"Returns a new parser on the string or stream argument treating the
	specified URI as the base URI of the document but doesn't parse it.

	Can be used to configure a parser with 'configuring' messages before
	parsing with parseDocument."

	^ (self on: aStringOrStream) documentURI: aURIString