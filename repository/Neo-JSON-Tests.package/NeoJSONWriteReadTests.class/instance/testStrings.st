testing
testStrings
	| objects |
	objects := { 
		'foo'. 'Foo BAR'. ''. '	\\'''. 
		'élève en Français'. 
		String with: (Character codePoint: 12354) "HIRAGANA LETTER A" }.
	self 
		assert: (self writeRead: objects)
		equals: objects