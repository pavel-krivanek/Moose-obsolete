tokens
tWHITESPACE
	[ $" == char
		ifTrue: [ [ [ self next.
			nil == char ifTrue: [ ^ self syntaxError ].
			$" == char ] whileFalse.
			$" == self next ] whileTrue ].
	char isMSESeparator ] whileTrue: [ self next ]