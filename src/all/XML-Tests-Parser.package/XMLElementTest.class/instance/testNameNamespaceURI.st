tests
testNameNamespaceURI
	| element |

	element :=
		self nodeClass
			name: 'one'
			namespaceURI: 'defaultNS'.
	self
		assert: element class == self nodeClass;
		assert: element name = 'one';
		assert: element namespaceURI = 'defaultNS'.

	element :=
		self nodeClass
			name: 'prefix:two'
			namespaceURI: 'prefixNS'.
	self
		assert: element class == self nodeClass;
		assert: element name = 'prefix:two';
		assert: element namespaceURI = 'prefixNS'.
	self
		should: [
			self nodeClass
				name: 'prefix:three'
				namespaceURI: '']
		raise: XMLNamespaceException.

	element := self newNode.
	self assert:
		(element
			name: 'one'
			namespaceURI: 'defaultNS') == element.
	self
		assert: element name = 'one';
		assert: element namespaceURI = 'defaultNS'.

	self assert:
		(element
			name: 'prefix:two'
			namespaceURI: 'prefixNS') == element.
	self
		assert: element name = 'prefix:two';
		assert: element namespaceURI = 'prefixNS'.

	self
		should: [
			element
				name: 'prefix:three'
				namespaceURI: '']
		raise: XMLNamespaceException.

	(element := self newNode) usesNamespaces: false.
	self assert:
		(element
			name: 'four'
			namespaceURI: 'defaultNS') == element.
	self
		assert: element name = 'four';
		assert: element namespaceURI = 'defaultNS';
		assert: element usesNamespaces.