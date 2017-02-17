adding
addGridShapeTo: aCanvas
	gridShape := TRCanvasGridShape new.
	gridShape spacing: gridSize.
	gridShape dashes: self dashes.
	gridShape color: self color.
	aCanvas addShape: gridShape