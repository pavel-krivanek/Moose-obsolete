parsing
innerXML: aStringOrStream
	"Replaces the node children by parsing new inner XML from a string or stream
	argument. By default the same parser configuration will be used to parse the
	new inner XML."

	self innerXMLParsedWith: (self parserHandlerClass on: aStringOrStream)