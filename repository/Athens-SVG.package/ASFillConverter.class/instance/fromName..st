parsing
fromName: aString
	^ ASColorPaint new color: (Color perform: aString asSymbol)