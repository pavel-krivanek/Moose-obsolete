accessing
elementIDValidator
	^ elementIDValidator ifNil: [elementIDValidator := XMLElementIDValidator new]