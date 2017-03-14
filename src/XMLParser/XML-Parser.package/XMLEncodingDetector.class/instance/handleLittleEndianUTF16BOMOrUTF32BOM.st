private
handleLittleEndianUTF16BOMOrUTF32BOM
	^ self
		handleBOM: UTF32LittleEndianBOM
		forConverterClass: XMLUTF32LittleEndianStreamConverter
		ifUnmatched: [:matchedPortion | | converter |
			matchedPortion = UTF16LittleEndianBOM
				ifTrue: [converter := XMLUTF16LittleEndianStreamConverter new]
				ifFalse: [self resetStreamToStartPosition].
			converter]