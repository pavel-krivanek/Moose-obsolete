accessing
next: anInteger
	| writeStream i |

	writeStream := self newWriteStream.
	i := 0.
	[self atEnd
		or: [i >= anInteger]]
		whileFalse: [
			writeStream nextPut: self next.
			i := i + 1].
	^ writeStream contents.