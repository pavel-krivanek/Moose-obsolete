flatten
testFlatten

	self assert: #(1 2 3)
		equals: #((1) (2) (3)) flatten.
	self assert: #(1 2 3 1 2)
		equals: #((1 2) (3 1 2)) flatten.
	self assert: #(a b (c d))
		equals: #((a b) ((c d))) flatten.
	self should: [ #((1 2) 3) flatten ] raise: Error.