accessing
toElements
	toElements ifNil: [ ^ self view elements ].
	^ toElements