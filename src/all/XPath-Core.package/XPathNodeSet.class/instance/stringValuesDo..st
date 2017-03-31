enumerating
stringValuesDo: aBlock
	"enumerates XPath string-values of nodes in document order"
	self asSorted do: [:each |
		aBlock value: each stringValue]