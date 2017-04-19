testing
isNamed: aName
	"Does the receiver's qualified or local name match aName?"

	^ self name isXMLQualifiedOrLocalName: aName