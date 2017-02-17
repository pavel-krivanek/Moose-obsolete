*XPath-Core-converting
asXPathNumber
	"Gemstone has TrueClass/FalseClass instead of True/False subclasses,
	so this is implemented in the superclass for portability"
	^ self
		ifTrue: [1.0]
		ifFalse: [0.0]