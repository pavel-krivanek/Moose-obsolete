tests
testDescendantNodesDo
	| nodeWithNodes descendantNodes |

	nodeWithNodes := self newNodeWithNodes.
	descendantNodes := nodeWithNodes descendantNodes.
	self
		should: [:block | nodeWithNodes descendantNodesDo: block]
		enumerate: descendantNodes.

	descendantNodes do: [:node |
		node canHaveChildren
			ifTrue: [
				self
					should: [:block | node descendantNodesDo: block]
					enumerate: node descendantNodes]].