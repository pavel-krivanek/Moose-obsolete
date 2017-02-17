tests
testAncestorNodes
	| nodeWithNodes ancestorStack |

	super testAncestorNodes.

	nodeWithNodes := self newNodeWithNodes.
	ancestorStack := OrderedCollection new.
	nodeWithNodes allNodesDo: [:each |
		[ancestorStack isEmpty
			or: [ancestorStack last == each parent]]
			whileFalse: [ancestorStack removeLast].
		self assert:
			each ancestorNodes asOrderedCollection =
				ancestorStack reversed.
		ancestorStack addLast: each].