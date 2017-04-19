running
increment
	(progBar isNotNil and: [ (Time millisecondsSince: lastUpdate) >= 500 ])
		ifTrue: [ 
			progBar value: self pos.
			lastUpdate := Time millisecondClockValue ]