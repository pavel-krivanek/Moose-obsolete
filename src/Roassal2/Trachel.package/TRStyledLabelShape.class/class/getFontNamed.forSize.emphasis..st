utility
getFontNamed: aFontName forSize: aNumber emphasis: anEmphasis
	^ (self getFontNamed: aFontName ForSize: aNumber)
		emphasized: (anEmphasis inject: 0 into: [ :sum :next | sum + next emphasisCode ])