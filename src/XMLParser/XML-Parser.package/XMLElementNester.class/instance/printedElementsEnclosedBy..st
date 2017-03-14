printing
printedElementsEnclosedBy: anElement
	^ String streamContents: [:stream |
		self
			printElementsStartingAt: (self openElements lastIndexOf: anElement) + 1
			on: stream]