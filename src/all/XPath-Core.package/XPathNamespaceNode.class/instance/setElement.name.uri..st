initialization
setElement: anElement name: aPrefix uri: aURI
	"reuse parent inst var, like in XMLAttribute"
	parent := anElement.
	name := aPrefix.
	uri := aURI.