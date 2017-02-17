enumerating
stringValuesDo: aBlock
	"enumerates XPath string-values of nodes"
	self do: [:each | aBlock value: each stringValue]