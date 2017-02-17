enumerating
elementsCollect: aBlock
	"returns an ordered list of the values of evaluating the element
	children of the receiver with aBlock"

	^ self nodes elementsCollect: aBlock