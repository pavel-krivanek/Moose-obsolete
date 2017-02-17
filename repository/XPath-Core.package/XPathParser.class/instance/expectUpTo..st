private
expectUpTo: aCharacter
	writeStream reset.
	[readStream atEnd
		or: [readStream peek = aCharacter]]
		whileFalse: [writeStream nextPut: readStream next].
	self expectNext: aCharacter.
	^ writeStream contents.