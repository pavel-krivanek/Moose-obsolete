accessing
allNameChars
	"to conserve memory, do not persistently cache this"
	^ self allNameStartChars,
		(BitmapCharacterSet fromXMLBNF:
			'"-" | "." | [0-9] | #xB7 | [#x0300-#x036F] | [#x203F-#x2040]')