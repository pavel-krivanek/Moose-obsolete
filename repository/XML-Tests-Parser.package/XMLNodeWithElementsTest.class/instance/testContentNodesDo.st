tests
testContentNodesDo
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		should: [:block | nodeWithElements contentNodesDo: block]
		enumerate: nodeWithElements contentNodes.
	nodeWithElements allElementsDo: [:each |
		self
			should: [:block | each contentNodesDo: block]
			enumerate: each contentNodes].