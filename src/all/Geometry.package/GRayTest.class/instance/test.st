as yet unclassified
test
	self skip.
	self
		assert: (( GRay origin: 28 @ 30 direction: (-14.19823766979061@ -21.67099433810146) )asLine intersect: 
		(( GRay origin: 20 @ 23 direction: (-16.331370027835703@ -32.66274005567141))asLine) )
		equals: 9@1.
