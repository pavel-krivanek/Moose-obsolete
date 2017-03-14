private
handleBOM: aByteOrderMark forConverterClass: aConverterClass
	^ self
		handleBOM: aByteOrderMark
		forConverterClass: aConverterClass
		ifUnmatched: [:matchedPortion |
			self resetStreamToStartPosition.
			nil]