accessing
latePopulateContents
	
	|default|
	default := defaultValue meValue: self requiredInputs.
	default ifNotNil: [:aString |
		self label: aString
		]. 
	