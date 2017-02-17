private
handleBigEndianUTF32BOMOrImplicitEncoding
	^ self
		handleBOM: UTF32BigEndianBOM
		forConverterClass: XMLUTF32BigEndianStreamConverter
		ifUnmatched: [:matchedPortion | | converter |
			(matchedPortion size = 1 "one null char"
				and: [self peekForASCII])
				ifTrue: [converter := XMLUTF16BigEndianStreamConverter new]
				ifFalse: [
					(matchedPortion size = 2  "two null chars"
						and: [self peekForNull "three null chars"
							and: [self peekForASCII]]) 
						ifTrue: [converter := XMLUTF32BigEndianStreamConverter new]].
			self resetStreamToStartPosition.
			converter]