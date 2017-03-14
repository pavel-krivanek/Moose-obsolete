adding
addTo: aStateSet
	lastAddedTo == aStateSet
		ifFalse: [
			"This avoids getting caught in a loop"
			lastAddedTo := aStateSet.

			leftBranch addTo: aStateSet.
			rightBranch addTo: aStateSet]