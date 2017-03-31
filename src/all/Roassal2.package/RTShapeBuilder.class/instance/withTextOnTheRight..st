shapes - texting
withTextOnTheRight: aSymbolOrABlock
	| newShape |
	newShape := RTCompositeShape new.
	newShape add: shape.
	newShape add: (RTLabel new text: aSymbolOrABlock).
	newShape horizontal.
	newShape setAutomaticRelayout.
	shape := newShape.