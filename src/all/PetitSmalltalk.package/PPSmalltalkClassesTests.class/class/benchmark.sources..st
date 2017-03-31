utilities
benchmark: aParser sources: aCollection
	| count start |
	count := 0.
	start := Time millisecondClockValue.
	[  aCollection do: [ :each | aParser parseMethod: each ].
		count := count + 1.
		(Time millisecondsSince: start) < 10000 ] whileTrue.
	^ (1000 * count * (aCollection detectSum: [ :each | each size ]) 
		/ (Time millisecondsSince: start)) asInteger asString , ' characters/sec'