tokens
tFULLNAME
	(self characterSet isLetter: char) ifFalse: [ ^ nil ].
	
	buf reset.
	[	buf nextPut: char.
		[ self nextCharIsAlphanumeric ] whileTrue: [ buf nextPut: char ].
		$. == char ] whileTrue: 
			[	buf nextPut: char.
				(self characterSet isLetter: self next) ifFalse: [^self syntaxError ] ].
	$: == char ifTrue: [ ^self syntaxError ].
	self tWHITESPACE.
	^buf contents