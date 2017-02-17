decoding
convertFromEncoding: anEncodingName
	"encoding attributes are ignored unless we are already decoding"
	stream isXMLConvertingStreamAdapter
		ifTrue: [self decodeStreamWithConverter: anEncodingName asXMLStreamConverter]