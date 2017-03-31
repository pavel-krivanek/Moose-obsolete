tests
testStringNodesDo
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		should: [:block | nodeWithElements stringNodesDo: block]
		enumerate: nodeWithElements stringNodes.
	nodeWithElements allElementsDo: [:each |
		self
			should: [:block | each stringNodesDo: block]
			enumerate: each stringNodes].