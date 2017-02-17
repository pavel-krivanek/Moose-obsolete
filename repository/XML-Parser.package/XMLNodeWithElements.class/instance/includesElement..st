testing
includesElement: aName
	"returns true if the receiver has a child element whose qualified or local name
	matches aName"

	^ self nodes includesElement: aName