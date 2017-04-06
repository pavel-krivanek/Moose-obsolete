parsing - peeking
peekForPITestTarget
	| startPosition |
	
	startPosition := self currentPosition + 1.
	super peekForPITestTarget
		ifTrue: [
			startArgumentPosition := startPosition.
			endArgumentPosition := self currentPosition.
			^ true]
		ifFalse: [^ false].