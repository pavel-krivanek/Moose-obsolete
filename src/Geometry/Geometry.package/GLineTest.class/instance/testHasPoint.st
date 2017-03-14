as yet unclassified
testHasPoint
"self
	assert: ((GLine a:(-50634/18737)b:(1594971/37474)c: (-183016593/74948)) 
		hasPoint: (57.998905906959145@61.11074842728413) withApproximation: 0.02757564283371476 )
	equals: true."
"self
	assert: ((GSegment with:	((838/41)@(4811/82)) with:((57583/914)@(56095/914))) asLine
		hasPoint: (57.998905906959145@61.11074842728413) withApproximation: 0.02757564283371476 )
	equals: true."