printing
printedElements
	^ String streamContents: [:stream | self printElementsOn: stream]