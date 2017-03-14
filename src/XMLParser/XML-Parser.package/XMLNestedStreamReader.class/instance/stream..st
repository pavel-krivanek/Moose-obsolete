accessing
stream: aStream
	"if the stream is not already a decoding adapter,
	then only assume it needs one if it's binary"
	aStream isXMLConvertingStreamAdapter
		ifTrue: [stream := aStream]
		ifFalse: [stream := XMLDecodingReadStreamAdapter onStreamIfBinary: aStream]