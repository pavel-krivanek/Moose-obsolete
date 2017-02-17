testing
testSearch4OneFragmentsOfSize1AtMiddleOfTheArray
	| array starts ends |
	starts := OrderedCollection new.
	ends := OrderedCollection new.
	array := DudeBooleanVector new: 10.
	array at: 7 put: true.
	array
		withContinuos: true
		fragmentsOfMinSize: 1
		do: [ :start :end | 
			starts addLast: start.
			ends addLast: end ].
	self assert: starts size equals: 1.
	self assert: (starts at: 1) equals: 7.
	self assert: (ends at: 1) equals: 7