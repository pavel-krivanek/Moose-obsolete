public
formFromStream: aStream
	"return a form or visual component from a image stream"
	^ self formClass fromBinaryStream: (self mimeDecodeToBytes: aStream)