testing-other
testQualifiedName
	| name |
	name := PPXmlName name: 'prefix:tag'.
	self assertNameInvariant: name.
	self assert: name localName = 'tag'.
	self assert: name namespacePrefix = 'prefix'.
	self assert: name qualifiedName = 'prefix:tag'.
	self assert: name uri isNil