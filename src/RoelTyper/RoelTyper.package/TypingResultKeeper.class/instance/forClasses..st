public
forClasses: aClassList
	| collector |
	collector := TypeCollector new.
	timeTaken := Time
		millisecondsToRun:
			[aClassList
				do:
					[:cl | 
					cl isMeta
						ifFalse:
							[self addCollectorResult: (collector typeInstvarsOfClass: cl)]]]