decoding
detectEncoding
	prePeekStreamPosition := nil.
	peekChar := nil.
	stream reset.
	(XMLEncodingDetector on: stream) streamConverterForEncoding
		ifNotNil: [:converter |
			self streamConverter: converter].