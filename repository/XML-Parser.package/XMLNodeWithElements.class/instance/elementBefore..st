accessing
elementBefore: anElement
	"returns the first element child of the receiver before anElement or
	nil if there isn't one"

	^ self nodes elementBefore: anElement