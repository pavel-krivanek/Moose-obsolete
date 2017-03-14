flatten
testDeepFlattenOnFlatCollection

	self assert: #(1 2 4)
		equals: #(1 2 4) deepFlatten.
	self assert: #(5 3)
		equals: #(5 ((3))) deepFlatten.