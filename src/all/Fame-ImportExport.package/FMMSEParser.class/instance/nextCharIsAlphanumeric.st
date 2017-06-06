testing
nextCharIsAlphanumeric
	self next.
	^ (self characterSet isLetter: char) or: [ self characterSet isDigit: char ]