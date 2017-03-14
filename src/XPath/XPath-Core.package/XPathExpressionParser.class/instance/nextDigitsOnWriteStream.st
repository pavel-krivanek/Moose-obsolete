parsing
nextDigitsOnWriteStream
	"first digit"
	writeStream nextPut: readStream next.
	[self atDigit]
		whileTrue: [writeStream nextPut: readStream next].