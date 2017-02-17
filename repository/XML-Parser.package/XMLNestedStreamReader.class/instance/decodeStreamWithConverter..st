decoding
decodeStreamWithConverter: aStreamConverter
	stream isXMLConvertingStreamAdapter
		ifTrue: [stream streamConverter: aStreamConverter]
		ifFalse: [
			stream :=
				XMLDecodingReadStreamAdapter
					on: stream
					streamConverter: aStreamConverter]