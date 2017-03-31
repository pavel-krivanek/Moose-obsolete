tests
testAncestorElementsDo
	| node |

	node := self newNode.
	self
		should: [:block |  node ancestorElementsDo: block]
		enumerate: #().