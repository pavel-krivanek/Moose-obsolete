testing-other
testUnqualifiedName
	| name |
	name := PPXmlName name: 'tag'.
	self assert: name localName = 'tag'.
	self assert: name namespacePrefix isNil.
	self assert: name qualifiedName = 'tag'.
	self assert: name uri isNil