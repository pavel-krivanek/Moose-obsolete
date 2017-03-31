*XPath-Tests
testXPathContext
	| node context |

	node := self newNode.
	context := self newContext.
	context
		variableAt: 'var'
		put: 'test'.
	self
		assert: (node xpath: '$var' context: context) = 'test';
		assert: (node xpath: (XPath for: '$var') context: context) = 'test'.