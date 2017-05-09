accessing
allChars
	"to conserve memory, do not persistently cache this"
	^ BitmapCharacterSet fromXMLBNF:
		'#x9 | #xA | #xD | [#x20-#xD7FF] | [#xE000-#xFFFD] | [#x10000-#x10FFFF]'