tests
testHasOnTheSameSideAs1

	self assert:(((17674/229)@(14582/229)) has: ((9244/147)@(1090/21)) 
				onTheSameSideAs: (76.82622578909061@64.97050543967634))
		equals: false.
		
	self assert:(((17674/229)@(14582/229)) has: ((-28206/397)@(50382/397)) 
				onTheSameSideAs: (76.82622578909061@64.97050543967634))
		equals: true