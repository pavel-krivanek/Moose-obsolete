accessing
listItemsLast: anInteger
	"last: is not portable to GS"
	anInteger > 0
		ifFalse: [^ #()].
	^ self listItems
		copyFrom: ((self listItems size - anInteger + 1) max: 1)
		to: self listItems size.