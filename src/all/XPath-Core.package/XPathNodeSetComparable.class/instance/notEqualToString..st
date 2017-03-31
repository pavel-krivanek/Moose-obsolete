private
notEqualToString: aString
	^ value anySatisfy: [:each |
		each stringValue ~= aString]