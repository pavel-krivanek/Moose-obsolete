tests
testAnnotatedFrequency
	| set d f |
	set := #(2 2 2 5 5).
	d := RTDistribution on: set.
	f := d annotatedFrequency.
	self assert: d amountOfDifferentValues = 2.
	self assert: f = (Array 
		with: (Array with: 3 with: #(2 2 2) asOrderedCollection)
		with: (Array with: 0 with: OrderedCollection new) 
		with: (Array with: 2 with: #(5 5) asOrderedCollection)) 
