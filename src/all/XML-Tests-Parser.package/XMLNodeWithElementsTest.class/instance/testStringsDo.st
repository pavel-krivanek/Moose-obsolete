tests
testStringsDo
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		should: [:block | nodeWithElements stringsDo: block]
		enumerate: nodeWithElements strings.
	nodeWithElements allElementsDo: [:each |
		self
			should: [:block | each stringsDo: block]
			enumerate: each strings].