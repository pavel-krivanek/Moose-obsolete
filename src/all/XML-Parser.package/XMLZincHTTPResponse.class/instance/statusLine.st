accessing
statusLine
	^ self zincResponse statusLine
		ifNil: ['']
		ifNotNil: [:statusLine | statusLine printString]