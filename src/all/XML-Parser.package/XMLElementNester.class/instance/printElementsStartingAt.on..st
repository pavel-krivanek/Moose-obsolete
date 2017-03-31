printing
printElementsStartingAt: aStart on: aStream
	self
		printElementsStartingAt: aStart
		stoppingAt: aStart + self elementPrintLimit - 1
		on: aStream