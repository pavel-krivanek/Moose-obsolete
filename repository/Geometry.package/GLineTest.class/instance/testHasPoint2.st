as yet unclassified
testHasPoint2

self
	assert: ((GSegment with:	((17674/229)@(14582/229)) with:(76.82622578909061@64.97050543967634)) 
			asLine hasPoint: ((-28206/397)@(50382/397)) withApproximation: 0.525738602984892 )
	equals: false.
"self
	assert: ((GSegment with:	((17674/229)@(14582/229)) with:(76.82622578909061@64.97050543967634)) 
			asLine hasPoint: ((9244/147)@(1090/21)) withApproximation: 0.525738602984892 )
	equals: true."