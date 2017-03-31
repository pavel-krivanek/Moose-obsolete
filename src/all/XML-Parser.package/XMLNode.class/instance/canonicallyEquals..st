testing
canonicallyEquals: aNode
	"returns true if the receiver and aNode have the same canonical
	representation (http://www.w3.org/TR/xml-c14n)"

	^ self canonicallyPrinted = aNode canonicallyPrinted