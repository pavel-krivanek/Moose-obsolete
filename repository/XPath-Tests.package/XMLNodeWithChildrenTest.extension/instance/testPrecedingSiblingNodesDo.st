*XPath-Tests
testPrecedingSiblingNodesDo
	| nodeWithNodes |

	super testPrecedingSiblingNodesDo.

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes allNodesDo: [:each |
		self
			should: [:block | each precedingSiblingNodesDo: block]
			enumerate:
				(each hasParent
					ifTrue: [(each parent nodes copyUpTo: each) reversed]
					ifFalse: [#()])].