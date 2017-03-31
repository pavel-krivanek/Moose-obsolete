*XPath-Tests
testWithAncestorNodesDo
	| node |

	node := self newNode.
	self
		should: [:block | node withAncestorNodesDo: block]
		enumerate: (Array with: node)