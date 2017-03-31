public
removeExample: anExample
	anExample ifNil: [ ^ self ].
	removed add: anExample