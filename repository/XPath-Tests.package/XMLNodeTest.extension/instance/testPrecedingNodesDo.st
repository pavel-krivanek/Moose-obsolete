*XPath-Tests
testPrecedingNodesDo
	| node |

	node := self newNode.
	self
		should: [:block | node precedingNodesDo: block]
		enumerate: #().