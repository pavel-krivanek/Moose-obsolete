utility
widthOfText: aString fontName: aFontName fontSize: aNumber emphasis: anEmphasis
	^ (self getFontNamed: aFontName forSize: aNumber emphasis: anEmphasis)
		widthOfString: aString