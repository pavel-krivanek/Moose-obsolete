accessing
backgroundColorFor: element
	color := backgroundColor rtValue: element.
	color isColor ifFalse: [ 
		color := Color colorFrom: color ].
	^ color