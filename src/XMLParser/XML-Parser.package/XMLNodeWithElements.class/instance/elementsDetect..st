enumerating
elementsDetect: aBlock
	"returns the first element child of the receiver that aBlock evaluates
	true for or nil if there isn't one"

	^ self nodes elementsDetect: aBlock