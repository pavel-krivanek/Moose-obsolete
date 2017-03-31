tests
testAncestorElementsDo
	| nodeWithElements |

	super testAncestorElementsDo.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each |
		self
			should: [:block | each ancestorElementsDo: block]
			enumerate: each ancestorElements].