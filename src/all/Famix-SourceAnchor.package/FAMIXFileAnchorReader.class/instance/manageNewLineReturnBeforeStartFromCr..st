reading
manageNewLineReturnBeforeStartFromCr: aBoolean
	self increment.
	lineCount = self startLine ifFalse: [ ^ self ].
	
	aBoolean
		ifTrue: [ "For CRLF" self skipNextIfLf ].
	self readUntilStartColumn