parsing
endParsing
	handler handleEndParsing.
	handler mustBeAtEndAfterParsing
		ifTrue: [	
			readStream skipSeparators.
			readStream atEnd
				ifFalse: [self errorExpectedAtEnd]].