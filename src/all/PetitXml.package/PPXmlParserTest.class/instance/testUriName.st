testing-other
testUriName
	| name |
	name := PPXmlName name: 'prefix:tag' uri: 'http://www.lukas-renggli.ch/'.
	self assertNameInvariant: name.
	self assert: name localName = 'tag'.
	self assert: name namespacePrefix = 'prefix'.
	self assert: name qualifiedName = 'prefix:tag'.
	self assert: name uri = 'http://www.lukas-renggli.ch/'