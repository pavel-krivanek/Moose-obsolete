enumerating
descendantElementsDetect: aBlock
	"returns the first descendant element that aBlock evaluates true for or
	nil if there isn't one"

	^ self
		descendantElementsDetect: aBlock
		ifNone: [nil]