testing
testSearch4TwoFragmentsOfSize4WithMinSize3
	| array starts ends |
	starts := OrderedCollection new.
	ends := OrderedCollection new.
	array := DudeBooleanVector new: 16.
	array at: 1 put: true.
	array at: 2 put: true.
	array at: 3 put: true.
	array at: 4 put: true.
	array at: 6 put: true.
	array at: 7 put: true.
	array at: 8 put: true.
	array at: 9 put: true.
	array at: 11 put: true.
	array at: 12 put: true.
	array
		withContinuos: true
		fragmentsOfMinSize: 3
		do: [ :start :end | 
			starts addLast: start.
			ends addLast: end ].
	self assert: starts size equals: 2.
	self assert: (starts at: 1) equals: 1.
	self assert: (ends at: 1) equals: 4.
	self assert: (starts at: 2) equals: 6.
	self assert: (ends at: 2) equals: 9