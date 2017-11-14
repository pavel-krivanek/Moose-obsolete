tests
testUndeclarePrefix
	| element |

	element := self newElementWithAttributes.
	element
		declarePrefix: 'unused'
		uri: 'unusedNS'.
	element addElementNamed: 'prefixTwo:inner'.

	self
		assert: (element undeclarePrefix: '') == element;
		assert: (element undeclarePrefix: 'unused') == element.
	element allElementsDo: [:each |
		self
			deny: (each isDeclaredPrefix: '');
			deny: (each isDeclaredPrefix: 'unusused');
			assert: (each isDeclaredPrefix: 'prefixTwo')].

	"this prefix is used by the subelement so it can't be undeclared"
	self
		should: [element undeclarePrefix: 'prefixTwo']
		raise: XMLNamespaceException.

	(element := self newElementWithAttributes)
		attributeAt: 'prefixTwo:name'
		put: 'value'.
	"this prefix is used by an attribute so it can't be undeclared"
	self
		should: [element undeclarePrefix: 'prefixTwo']
		raise: XMLNamespaceException.

	(element := self newNode) usesNamespaces: false.
	self
		assert: (element undeclarePrefix: '') == element;
		assert: element usesNamespaces.