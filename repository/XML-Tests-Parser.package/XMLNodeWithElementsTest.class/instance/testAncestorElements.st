tests
testAncestorElements
	| nodeWithElements ancestorStack |

	super testAncestorElements.

	nodeWithElements := self newNodeWithElements.
	ancestorStack := OrderedCollection new.
	nodeWithElements allNodesDo: [:each |
		[ancestorStack isEmpty
			or: [ancestorStack last = each parent]]
			whileFalse: [ancestorStack removeLast].
		self assert:
			each ancestorElements asOrderedCollection =
				ancestorStack reversed.
		each isElement
			ifTrue: [ancestorStack addLast: each]].