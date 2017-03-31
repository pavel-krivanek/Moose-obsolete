parsing
fromHex: aString
	^ ASColorPaint new color: (self parseColor: aString allButFirst)