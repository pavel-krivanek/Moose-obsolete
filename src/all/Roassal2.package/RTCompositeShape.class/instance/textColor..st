public - forwarding
textColor: aOneArgBlockOrColorOrSymbol
	(self shapesInstancesOf: RTLabel)
		do: [ :s | s color: aOneArgBlockOrColorOrSymbol ]