source access
methodBodyOn: aReadStream
	
	numberOfLinesOfCode := aReadStream contents occurrencesOf: Character cr.
	aReadStream contents last = Character cr
		ifFalse: [numberOfLinesOfCode := numberOfLinesOfCode + 1].	"the last line ay not contain a final cr"	"-- take care: some platforms use line-feeds instead of cr--"
	numberOfLinesOfCode == 1
		ifTrue:
			[| aux |
			aux := aReadStream contents occurrencesOf: Character lf.
			aReadStream contents last = Character cr
				ifFalse: [numberOfLinesOfCode := numberOfLinesOfCode + 1].
			numberOfLinesOfCode := numberOfLinesOfCode max: aux]