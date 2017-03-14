tests
testAllNodesDo
	| nodeWithNodes allNodes |

	nodeWithNodes := self newNodeWithNodes.
	allNodes := nodeWithNodes allNodes.
	self
		should: [:block | nodeWithNodes allNodesDo: block]
		enumerate: allNodes.

	allNodes do: [:node |
		node canHaveChildren
			ifTrue: [
				self
					should: [:block | node allNodesDo: block]
					enumerate: node allNodes]].