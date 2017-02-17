as yet unclassified
testIsDegenerate
	self
		assert: (GTriangle with: 0 @ 0 with: 2 @ 0 with: 3 @ 0) isDegenerate.
	self
		assert: (GTriangle with: 0 @ 0 with: 2 @ 0 with: 0 @ 3) isDegenerate not.
	self
		assert: (GTriangle with: 1 @ 0 with: 1 @ 2 with: 1 @ -1) isDegenerate.	