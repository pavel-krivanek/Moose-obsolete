encoding extraction
extractStartFromAnchor: anchor
	| begin end start |
	begin := (anchor
		indexOfSubCollection: 'start'
		startingAt: 1) + 6.
	end := (anchor
		indexOfSubCollection: 'end'
		startingAt: 1) - 2.
	start := anchor
		copyFrom: begin
		to: end.
	^start asNumber