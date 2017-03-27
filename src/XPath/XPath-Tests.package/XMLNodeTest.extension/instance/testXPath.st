*XPath-Tests
testXPath
	| node |

	node := self newNode.
	self
		assert: (node xpath: '.') = (self nodeSetClass with: node);
		assert: (node xpath: (XPath for: '.')) = (self nodeSetClass with: node).