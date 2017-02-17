*XPath-Tests
testXPath
	| node |

	node := self newNode.
	self
		assert: (node xPath: '.') = (self nodeSetClass with: node);
		assert: (node xPath: (XPath for: '.')) = (self nodeSetClass with: node).