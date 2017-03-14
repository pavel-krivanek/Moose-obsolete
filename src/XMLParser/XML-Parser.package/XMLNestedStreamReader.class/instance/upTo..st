accessing
upTo: aCharacter
	| writeStream nextChar |

	writeStream := self newWriteStream.
	[self atEnd
		or: [(nextChar := self next) = aCharacter]]
		whileFalse: [writeStream nextPut: nextChar].
	^ writeStream contents.