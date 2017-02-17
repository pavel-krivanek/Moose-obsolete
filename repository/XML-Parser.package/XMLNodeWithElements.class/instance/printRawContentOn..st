printing
printRawContentOn: aStream
	self contentNodesDo: [:each | each printRawContentOn: aStream]