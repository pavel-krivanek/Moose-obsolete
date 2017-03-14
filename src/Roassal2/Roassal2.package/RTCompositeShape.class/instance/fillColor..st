public - forwarding
fillColor: aOneArgBlockOrColorOrSymbol
	shapes ifEmpty: [ self error: 'You first need to add shape before setting the color' ].
	(self shapesInstancesOf: RTAbstractElementShape) do: [ :s | s fillColor: aOneArgBlockOrColorOrSymbol ]