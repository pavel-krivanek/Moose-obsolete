accessing
attributeNodeAt: aName namespaceURI: aURI
	"returns the attribute node whose qualified or local name matches aName
	(unlike attributeAt:, which matches the full name exactly) and whose
	namespace URI matches aURI, or nil if there isn't any"

	^ self attributeNodes
		attributeNodeAt: aName
		namespaceURI: aURI