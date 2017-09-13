accessing
suppliers
	"The Element(s) on which the client Element(s) depend in some respect. The modeler may stipulate a sense of Dependency direction suitable for their domain."
	^ suppliers ifNil: [ suppliers := OrderedCollection new ]