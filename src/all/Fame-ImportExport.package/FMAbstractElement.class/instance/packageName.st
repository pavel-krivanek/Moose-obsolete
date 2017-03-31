infering
packageName
	| pos |
	pos := name lastIndexOf: $..
	pos should > 0.
	^ name 
		copyFrom: 1
		to: pos - 1