accessing
sendsTo: instVarName
	"	^self sends at: (self indexForVar: instVarName)"

	^(self typingResultsFor: instVarName) interface