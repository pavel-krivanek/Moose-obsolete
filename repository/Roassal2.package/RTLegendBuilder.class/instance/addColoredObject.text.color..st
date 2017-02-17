public - convenient
addColoredObject: anObject text: aTextOrSymbolOrBlock color: aColor
	items add: (RTLabelLegendItem new model: anObject; text: aTextOrSymbolOrBlock; color: aColor; textSize: self textSize)