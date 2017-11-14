basic
basicCanConvertEncoding: anEncodingName
	^ (self textConverterClassForEncoding: anEncodingName) notNil