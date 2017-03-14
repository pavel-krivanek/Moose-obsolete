writing
writeStream
	"returns a file write stream with encoding; truncates existing files"

	^ XMLEncodingWriteStreamAdapter on: self rawWriteStream