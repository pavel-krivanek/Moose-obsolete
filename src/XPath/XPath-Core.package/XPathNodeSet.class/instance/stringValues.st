accessing
stringValues
	"returns XPath string-values of nodes"
	^ self collect: [:each | each stringValue]