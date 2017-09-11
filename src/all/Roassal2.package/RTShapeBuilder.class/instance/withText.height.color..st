shapes - texting
withText: aSymbolOrABlock height: aHeightAsIntegerOrBlock color: aColor
	shape := shape + (RTLabel new height: aHeightAsIntegerOrBlock; color: aColor; text: aSymbolOrABlock).
	^ shape