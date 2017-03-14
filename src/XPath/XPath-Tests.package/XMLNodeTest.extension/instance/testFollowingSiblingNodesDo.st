*XPath-Tests
testFollowingSiblingNodesDo
	| node |

	node := self newNode.
	self
		should: [:block | node followingSiblingNodesDo: block]
		enumerate: #().