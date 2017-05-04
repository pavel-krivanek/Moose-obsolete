*XML-Parser
expandWithXMLNamespaceURI: aURI
	"optimized"
	aURI size == 0
		ifTrue: [^ self]
		ifFalse: [^ 'Q{', aURI, '}', self]