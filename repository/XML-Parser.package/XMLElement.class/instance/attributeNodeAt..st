accessing
attributeNodeAt: aName
	"returns the attribute node whose qualified or local name matches aName
	(unlike attributeAt:, which matches the full name exactly), or nil if there
	isn't any"

	^ self attributeNodes attributeNodeAt: aName