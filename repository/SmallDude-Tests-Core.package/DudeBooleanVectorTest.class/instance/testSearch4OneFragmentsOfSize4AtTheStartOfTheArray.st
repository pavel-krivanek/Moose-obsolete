testing
testSearch4OneFragmentsOfSize4AtTheStartOfTheArray
	| array starts ends |
	starts := OrderedCollection new.
	ends := OrderedCollection new.
	array := DudeBooleanVector new: 10.
	array at: 1 put: true.
	array at: 2 put: true.
	array at: 3 put: true.
	array at: 4 put: true.
	array
		withContinuos: true
		fragmentsOfMinSize: 1
		do: [ :start :end | 
			starts addLast: start.
			ends addLast: end ].
	self assert: starts size equals: 1.
	self assert: (starts at: 1) equals: 1.
	self assert: (ends at: 1) equals: 4