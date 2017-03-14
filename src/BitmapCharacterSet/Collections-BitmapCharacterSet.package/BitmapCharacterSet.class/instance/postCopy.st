copying
postCopy
	byteCharacters := byteCharacters copy.
	wideCharacters
		ifNotNil: [wideCharacters := wideCharacters copy].