accessing
disjointSetElements
	disjointStates
		ifNil: [
			disjointStates :=
				Array
					with: (XMLNFAMatchingState matcher: 'three')
					with: (XMLNFAMatchingState matcher: 'four')].
	^ disjointStates copy.