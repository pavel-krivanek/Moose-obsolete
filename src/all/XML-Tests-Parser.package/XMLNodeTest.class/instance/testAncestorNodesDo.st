tests
testAncestorNodesDo
	| node |

	node := self newNode.
	self
		should: [:block |  node ancestorNodesDo: block]
		enumerate: #().