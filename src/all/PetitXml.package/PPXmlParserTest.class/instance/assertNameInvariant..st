utilities
assertNameInvariant: aXmlName
	"Assert the name invariants."
	
	self assert: (aXmlName localName notNil and: [ aXmlName localName notEmpty and: [ aXmlName qualifiedName endsWith: aXmlName localName ] ]).
	self assert: (aXmlName namespacePrefix isNil or: [ aXmlName namespacePrefix notEmpty and: [ aXmlName qualifiedName beginsWith: aXmlName namespacePrefix ] ]).
	self assert: (aXmlName uri isNil or: [ aXmlName uri notEmpty ]).
	
	self assert: aXmlName = aXmlName.
	self assert: aXmlName copy = aXmlName.
	self assert: aXmlName = aXmlName copy.
	
	self assert: aXmlName printString isString
	