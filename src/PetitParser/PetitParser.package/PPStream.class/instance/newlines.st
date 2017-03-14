positioning
newlines
	^ newlines ifNil: [ 
		newlines := self fillNewlines.
	]