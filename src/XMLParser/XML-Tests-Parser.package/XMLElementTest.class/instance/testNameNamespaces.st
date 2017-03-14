tests
testNameNamespaces
	| element |
	
	element :=
		self nodeClass
			name: 'one'
			namespaces: self namespaces.
	self
		assert: element class == self nodeClass;
		assert: element name = 'one';
		assert: element namespaceURI = 'defaultNS'.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element isDeclaredPrefix: prefix uri: uri)].

	"namespaces: should accept any collection of associations"
	element :=
		self nodeClass
			name: 'two'
			namespaces: self namespaces associations.
	self
		assert: element class == self nodeClass;
		assert: element name = 'two';
		assert: element namespaceURI = 'defaultNS'.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element isDeclaredPrefix: prefix uri: uri)].

	element :=
		self nodeClass
			name: 'prefix:three'
			namespaces: self namespaces.
	self
		assert: element class == self nodeClass;
		assert: element name = 'prefix:three';
		assert: element namespaceURI = 'prefixNS'.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element isDeclaredPrefix: prefix uri: uri)].

	self
		should: [
			self nodeClass
				name: 'undeclared:three'
				namespaces: self namespaces]
		raise: XMLNamespaceException.