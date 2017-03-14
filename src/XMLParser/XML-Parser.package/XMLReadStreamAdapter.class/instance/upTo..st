accessing
upTo: anObject
	| writeStream next |

	writeStream := self newWriteStream.
	[self atEnd
		or: [(next := self next) = anObject]]
		whileFalse: [writeStream nextPut: next].
	^ writeStream contents.