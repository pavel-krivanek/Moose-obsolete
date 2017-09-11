shapes - texting
withText: aSymbolOrABlock height: aHeightAsIntegerOrBlock
	shape := shape + (RTLabel new height: aHeightAsIntegerOrBlock; text: aSymbolOrABlock).
	^ shape