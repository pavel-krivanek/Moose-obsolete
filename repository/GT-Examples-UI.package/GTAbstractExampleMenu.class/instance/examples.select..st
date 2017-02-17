utils
examples: aBlock1 select: aBlock2
	(aBlock1 value select: [ :example | 
		example isGTExample 
			and: [ aBlock2 value: example ] ])
				ifNotEmpty: [ :examples | 
					(examples size = 1 
						ifTrue: [ examples anyOne ]
						ifFalse: [ examples ]) inspect ]
				ifEmpty: [ self notifyNoExamples ]