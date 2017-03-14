tests
testAllElementsDo
	| nodeWithElements allElements |

	nodeWithElements := self newNodeWithElements.
	allElements := nodeWithElements allElements.
	self
		should: [:block | nodeWithElements allElementsDo: block]
		enumerate: allElements.

	allElements do: [:element |
		self
			should: [:block | element allElementsDo: block]
			enumerate: element allElements].