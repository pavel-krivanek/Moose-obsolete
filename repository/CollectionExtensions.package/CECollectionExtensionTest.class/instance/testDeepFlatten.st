flatten
testDeepFlatten

	self assert: #(1 2 3)
		equals: #((1) (2) (3)) deepFlatten.
	self assert: #(1 2 3 1 2)
		equals: #((1 2) (3 1 2)) deepFlatten.
