private
handleBigEndianUTF16BOM
	^ self
		handleBOM: UTF16BigEndianBOM
		forConverterClass: XMLUTF16BigEndianStreamConverter