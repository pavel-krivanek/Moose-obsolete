as yet unclassified
palette

	^ colorScheme isNil 
		ifTrue: [ self defaultPalette ]
		ifFalse: [ (RTColorPalette paletteFor: colorScheme) colors: numberOfBuckets scheme: colorScheme
			]