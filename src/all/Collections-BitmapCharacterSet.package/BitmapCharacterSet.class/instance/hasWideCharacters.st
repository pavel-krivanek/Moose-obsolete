testing
hasWideCharacters
	self wideCharactersDo: [:each | ^ true].
	^ false.