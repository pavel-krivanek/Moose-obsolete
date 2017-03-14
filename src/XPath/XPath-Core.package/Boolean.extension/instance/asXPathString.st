*XPath-Core-converting
asXPathString
	"Gemstone has TrueClass/FalseClass instead of True/False subclasses,
	so this is implemented in the superclass for portability"
	^ self
		ifTrue: ['true']
		ifFalse: ['false']