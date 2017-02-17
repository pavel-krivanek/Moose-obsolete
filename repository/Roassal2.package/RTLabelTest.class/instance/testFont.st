font
testFont
	| v shape es firstShape fontList |
	v := RTView new.
	fontList := TRPlatform current fontListStrings.
	shape := RTLabel new 
		fontName: [ :i | fontList at: i ]; 
		text: 'The quick brown fox jumps over the lazy dog'.

	es := shape elementsOn: (1 to: fontList size).
	es @ RTPopup.

	v addAll: es.
	RTVerticalLineLayout on: v elements.

	firstShape := v canvas shapes first.
	self assert: firstShape fontName equals: fontList first.