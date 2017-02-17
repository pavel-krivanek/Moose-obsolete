tests
testNameNamespacesAttributes
	| element |

	element :=
		self nodeClass
			name: 'one'
			namespaces: self namespaces
			attributes: self attributes.
	self
		assert: element class == self nodeClass;
		assert: element name = 'one';
		assert: element namespaceURI = 'defaultNS';
		assertElement: element hasAttributes: self attributes.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element isDeclaredPrefix: prefix uri: uri)].

	element :=
		self nodeClass
			name: 'two'
			namespaces: self namespaces associations
			attributes: self attributes associations.
	self
		assert: element class == self nodeClass;
		assert: element name = 'two';
		assert: element namespaceURI = 'defaultNS';
		assertElement: element hasAttributes: self attributes.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element isDeclaredPrefix: prefix uri: uri)].

	self
		should: [
			self nodeClass
				name: 'undeclared:three'
				namespaces: self namespaces
				attributes: self attributes]
		raise: XMLNamespaceException.
	self
		should: [
			self nodeClass
				name: 'four'
				namespaces: #()
				attributes: self attributes]
		raise: XMLNamespaceException.