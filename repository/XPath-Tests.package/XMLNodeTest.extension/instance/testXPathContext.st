*XPath-Tests
testXPathContext
	| node context |

	node := self newNode.
	context := self newContext.
	context
		variableAt: 'var'
		put: 'test'.
	self
		assert: (node xPath: '$var' context: context) = 'test';
		assert: (node xPath: (XPath for: '$var') context: context) = 'test'.