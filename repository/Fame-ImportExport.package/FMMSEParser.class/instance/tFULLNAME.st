tokens
tFULLNAME
	char isLetter ifFalse: [ ^ nil ].
	buf reset.
	[	buf nextPut: char.
		[ self next isAlphaNumeric ] whileTrue: [ buf nextPut: char ].
		$. == char ] whileTrue: 
			[	buf nextPut: char.
				self next isLetter ifFalse: [^self syntaxError ] ].
	$: == char ifTrue: [ ^self syntaxError ].
	self tWHITESPACE.
	^buf contents