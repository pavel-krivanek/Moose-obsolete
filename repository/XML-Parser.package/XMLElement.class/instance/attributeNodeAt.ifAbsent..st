accessing
attributeNodeAt: aName ifAbsent: aBlock
	"returns the attribute node whose qualified or local name matches aName
	(unlike attributeAt:ifAbsent:, which matches the full name exactly), or
	the value of aBlock if there isn't any"

	^ self attributeNodes
		attributeNodeAt: aName
		ifAbsent: aBlock