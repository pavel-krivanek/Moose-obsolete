private
handleUTF8BOM
	^ self
		handleBOM: UTF8BOM
		forConverterClass: XMLUTF8StreamConverter