tests
testNodesDo
	| node |

	node := self newNode.
	self
		should: [:block | node nodesDo: block]
		enumerate: #().

	node := self newNodeWithNodes.
	self
		should: [:block | node nodesDo: block]
		enumerate: node nodes.