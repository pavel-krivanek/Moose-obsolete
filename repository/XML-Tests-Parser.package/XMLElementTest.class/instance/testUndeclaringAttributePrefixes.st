tests
testUndeclaringAttributePrefixes
	| element |

	element := self newElementWithAttributes.
	self
		shouldnt: [element undeclarePrefix: '']
		raise: XMLNamespaceException.
	self
		shouldnt: [element undeclarePrefix: 'prefixTwo']
		raise: XMLNamespaceException.
	self
		should: [element undeclarePrefix: 'prefix']
		raise: XMLNamespaceException.