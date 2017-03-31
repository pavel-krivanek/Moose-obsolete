parsing
parseFragment
	(self peekFor: $#)
		ifTrue: [^ readStream upToEnd]
		ifFalse: [^ '']