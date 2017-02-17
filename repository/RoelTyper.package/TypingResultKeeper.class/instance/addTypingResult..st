private
addTypingResult: aTypeResult
	| typeResultsForClass |
	typeResultsForClass := self typeResults
		at: aTypeResult ivarClass
		ifAbsentPut: [Dictionary new].
	typeResultsForClass
		at: aTypeResult ivarName
		put: aTypeResult