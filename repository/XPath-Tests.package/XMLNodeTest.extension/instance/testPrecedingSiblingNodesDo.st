*XPath-Tests
testPrecedingSiblingNodesDo
	| node |

	node := self newNode.
	self
		should: [:block | node precedingSiblingNodesDo: block]
		enumerate: #().