accessing
fromElements
	fromElements ifNil: [ ^ self view elements ].
	^ fromElements