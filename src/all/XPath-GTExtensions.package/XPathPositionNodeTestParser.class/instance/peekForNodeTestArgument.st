parsing - peeking
peekForNodeTestArgument
	| startPosition |
	
	startPosition := self currentPosition + 1.
	super peekForNodeTestArgument
		ifTrue: [
			startArgumentPosition := startPosition.
			endArgumentPosition := self currentPosition.
			^ true]
		ifFalse: [^ false].