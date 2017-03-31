adding
addTo: aStateSet
	lastAddedTo == aStateSet
		ifFalse: [
			"This avoids getting caught in a loop"
			lastAddedTo := aStateSet.

			aStateSet add: self]