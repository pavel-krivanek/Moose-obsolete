as yet unclassified
testExtendBy3

	self
		assert: 
	 ((( GRay origin: 0 @ 0 direction: 12 @ 9 ) extendBy: 1 ) asLine = (( GRay origin: 0 @ 0 direction: 12 @ 9 ) extendBy: 5 ) asLine)
	equals: true.
	
self
		assert: 
	 ((( GRay origin: 0 @ 0 direction: 12 @ 9 ) extendBy: 1 ) asLine ~= (( GRay origin: 0 @ 0 direction: 12 @ 9 ) extendBy: 5 ) asLine)
	equals: false.