testing
canConvertEncoding: anEncodingName
	^ (self textConverterClassForEncoding: anEncodingName) notNil