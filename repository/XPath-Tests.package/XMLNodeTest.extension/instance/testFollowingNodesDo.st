*XPath-Tests
testFollowingNodesDo
	| node |

	node := self newNode.
	self
		should: [:block | node followingNodesDo: block]
		enumerate: #().