*XPath-Tests
testFollowingSiblingNodesDo
	| nodeWithNodes |

	super testFollowingSiblingNodesDo.

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes allNodesDo: [:each |
		self
			should: [:block | each followingSiblingNodesDo: block]
			enumerate:
				(each hasParent
					ifTrue: [each parent nodes copyAfter: each]
					ifFalse: [#()])].