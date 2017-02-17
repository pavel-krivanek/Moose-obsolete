private
colllectDateInString: aString

	^ (aString 
		regex: self datePatternAsRegex 
		matchesCollect: #yourself) first