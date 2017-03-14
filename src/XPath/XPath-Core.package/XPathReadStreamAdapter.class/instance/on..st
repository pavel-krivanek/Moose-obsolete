initialization
on: aStream
	stream := aStream.
	"must use #writeStream instead of 'WriteStream on:' to get a 0-based
	stream on Gemstone"
	writeStream := (String new: 32) writeStream.