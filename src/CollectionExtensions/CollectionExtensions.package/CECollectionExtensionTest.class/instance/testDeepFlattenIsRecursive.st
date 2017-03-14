flatten
testDeepFlattenIsRecursive

	self assert: #(1 2 4 5 3)
		equals: #((1 2) ((4 5) 3)) deepFlatten.