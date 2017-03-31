as yet unclassified
testIsDegenerate2
self
	assert: (GTriangle with: 1@1 with: 3@3 with: 2@2 )isDegenerate.

self
	assert: (GTriangle with:  1@1 with: 2@2 with: 3@3 )isDegenerate.

self
	assert: (GTriangle with:  1@1 with: 2@2 with: 2@1 )isDegenerate not.
