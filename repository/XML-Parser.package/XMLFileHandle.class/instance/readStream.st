reading
readStream
	"returns a file read stream with decoding"

	^ (XMLDecodingReadStreamAdapter on: self rawReadStream)
		detectEncoding