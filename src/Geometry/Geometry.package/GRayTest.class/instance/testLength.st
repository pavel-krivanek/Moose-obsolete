as yet unclassified
testLength
	self
		assert: (( GRay origin: 0 @ 0 direction: -12 @ 16 ) length )
		equals: 400 sqrt.
	self
		assert: (( GRay origin: 0 @ 0 direction: 12 @ 9) length )
		equals: 225 sqrt.	