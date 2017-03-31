tests
testDescendantElementsDo
	| nodeWithElements descendantElements |

	nodeWithElements := self newNodeWithElements.
	descendantElements := nodeWithElements descendantElements.
	self
		should: [:block | nodeWithElements descendantElementsDo: block]
		enumerate: descendantElements.

	descendantElements do: [:element |
		self
			should: [:block | element descendantElementsDo: block]
			enumerate: element descendantElements].