parsing
fromRgb: aString
	| str numbers |
	str := (aString copyAfter: $( ) copyUpTo: $).
	numbers := (str substrings: ',') collect: [:ea| ea trimBoth asNumber].

	^ ASColorPaint new color: (
		Color r: numbers first
			g: numbers second
			b: numbers third
			range: 255)