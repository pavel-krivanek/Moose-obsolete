exporting
increment
	nb := nb + 1.
	(progBar isNotNil and: [ (Time millisecondsSince: lastUpdate) >= 500 ])
		ifTrue: [ 
			progBar value: nb.
			lastUpdate := Time millisecondClockValue ]