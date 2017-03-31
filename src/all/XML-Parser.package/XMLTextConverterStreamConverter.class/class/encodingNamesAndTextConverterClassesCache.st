private
encodingNamesAndTextConverterClassesCache
	^ EncodingNamesAndTextConverterClassesCache
		ifNil: [
			EncodingNamesAndTextConverterClassesCache := XMLKeyValueCache maxSize: 32]