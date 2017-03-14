accessing
colorFor: element
	| res |
	res := super colorFor: element.
	res isColor ifFalse: [ 
		res := Color colorFrom: res ].
	^ res