*XPath-Tests
testAllNodesReverseDo
	| node |

	node := self newNode.
	self
		should: [:block | node allNodesReverseDo: block]
		enumerate: (Array with: node).