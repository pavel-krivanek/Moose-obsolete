tests
testElementsDo
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		should: [:block | nodeWithElements elementsDo: block]
		enumerate: nodeWithElements elements.
	nodeWithElements allElementsDo: [:each |
		self
			should: [:block | each elementsDo: block]
			enumerate: each elements].