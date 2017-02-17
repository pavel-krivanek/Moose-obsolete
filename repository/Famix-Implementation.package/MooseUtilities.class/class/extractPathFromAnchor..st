encoding extraction
extractPathFromAnchor: anchor
	| start end path |
	start := anchor indexOf: $".
	end := anchor lastIndexOf: $".
	path := anchor
		copyFrom: start + 1
		to: end - 1.
	^path