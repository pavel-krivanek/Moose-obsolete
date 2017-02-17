tests
testAncestorNodesDo
	| nodeWithNodes |

	super testAncestorNodesDo.

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes allNodesDo: [:each |
		self
			should: [:block | each ancestorNodesDo: block]
			enumerate: each ancestorNodes].