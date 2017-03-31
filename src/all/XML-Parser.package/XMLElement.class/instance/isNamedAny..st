testing
isNamedAny: aNameCollection
	"Does the receiver's qualified or local name match any of the names
	in aNameCollection?"

	^ aNameCollection includesXMLName: self name