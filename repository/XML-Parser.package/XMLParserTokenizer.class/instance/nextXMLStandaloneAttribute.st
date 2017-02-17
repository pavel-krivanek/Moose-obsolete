tokenizing
nextXMLStandaloneAttribute
	"always optional"
	(streamReader peek == $s)
		ifTrue: [
			^ self
				nextXMLAttributeName: 'standalone';
				nextXMLStandaloneAttributeValue]
		ifFalse: [^ '']