*XPath-Tests
testPrecedingNodesDo
	| nodeWithNodes |

	super testPrecedingNodesDo.

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes allNodesDo: [:each |
		self
			should: [:block | each precedingNodesDo: block]
			enumerate:
				(each hasParent
					ifTrue: [(each parent descendantNodes copyUpTo: each) reversed]
					ifFalse: [#()])].