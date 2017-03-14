infering
simpleName
	| pos |
	pos := name lastIndexOf: $..
	pos should > 0.
	^ name 
		copyFrom: pos + 1
		to: name size