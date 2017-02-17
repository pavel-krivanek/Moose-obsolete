running
increment
	progBar ifNotNil: [
		(increments % 100) = 0 ifTrue: [ progBar value: self pos ]. 
		increments := increments + 1 ]