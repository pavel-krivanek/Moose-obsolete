tests
testUndeclarePrefix
	| element |

	element := self newElementWithAttributes.
	element addElementNamed: 'prefix:inner'.

	self
		assert: (element undeclarePrefix: '') == element;
		assert: (element undeclarePrefix: 'prefixTwo') == element.
	element allElementsDo: [:each |
		self
			deny: (each isDeclaredPrefix: '');
			deny: (each isDeclaredPrefix: 'prefixTwo')].
	self
		should: [element undeclarePrefix: 'prefix']
		raise: XMLNamespaceException.