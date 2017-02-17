testing
hasOpenIncludeSections
	totalOpenIncludeSections == nil
		ifTrue: [^ false].
	^ totalOpenIncludeSections > 0.