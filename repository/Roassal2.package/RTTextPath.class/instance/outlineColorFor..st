accessing
outlineColorFor: element
	| res |
	res := outlineColor rtValue: element.
	res isColor ifFalse: [ res := Color colorFrom: res ].
	^ res