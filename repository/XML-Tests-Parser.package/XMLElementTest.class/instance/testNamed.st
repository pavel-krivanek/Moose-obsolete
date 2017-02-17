tests
testNamed
	| element |

	element := self nodeClass named: 'test'.
	self
		assert: element class == self nodeClass;
		assert: element name = 'test'.
	self
		should: [self nodeClass named: 'undeclared:test']
		raise: XMLNamespaceException.