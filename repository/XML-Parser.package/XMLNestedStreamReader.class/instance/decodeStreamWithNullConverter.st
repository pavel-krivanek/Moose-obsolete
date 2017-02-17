decoding
decodeStreamWithNullConverter
	stream isXMLConvertingStreamAdapter
		ifTrue: [stream streamConverter: XMLStreamConverter null]