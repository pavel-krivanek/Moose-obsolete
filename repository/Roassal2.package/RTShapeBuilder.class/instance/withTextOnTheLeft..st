shapes - texting
withTextOnTheLeft: aSymbolOrABlock
	| newShape |
	newShape := RTCompositeShape new.
	newShape add: (RTLabel new text: aSymbolOrABlock).
	newShape add: shape.
	newShape horizontal.
	newShape setAutomaticRelayout.
	shape := newShape.