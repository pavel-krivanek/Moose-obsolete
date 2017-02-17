parsing
parse: aStringOrStream
	"Parses the document in the string or stream argument"

	^ (self on: aStringOrStream) parseDocument