tests
testDescendantElementsNamedDo
	| nodeWithElements namedElements |

	nodeWithElements := self newNodeWithElements.
	self
		should: [:block | nodeWithElements descendantElementsNamed: 'absent' do: block]
		enumerate: #().

	namedElements := nodeWithElements descendantElementsNamed: 'four'. 
	self
		should: [:block | nodeWithElements descendantElementsNamed: 'four' do: block]
		enumerate: namedElements.