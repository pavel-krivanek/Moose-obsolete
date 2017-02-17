decoding
detectEncoding
	stream isXMLConvertingStreamAdapter
		ifTrue: [stream detectEncoding]
		ifFalse: [
			(XMLEncodingDetector on: stream) streamConverterForEncoding
				ifNotNil: [:converter |
					self decodeStreamWithConverter: converter]]