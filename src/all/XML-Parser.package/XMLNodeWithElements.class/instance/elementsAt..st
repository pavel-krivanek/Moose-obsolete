accessing
elementsAt: aName
	"returns a node list of all the receiver's elements whose qualified
	or local names match aName"

	^ self nodes elementsAt: aName