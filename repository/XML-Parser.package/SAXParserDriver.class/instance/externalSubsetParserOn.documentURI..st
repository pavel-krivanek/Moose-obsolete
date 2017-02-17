private
externalSubsetParserOn: aStringOrStream documentURI: aURIString
	^ self saxHandler parserClass
		driver:
			(DTDExternalSubsetParserDriver
				saxDriver: self
				documentURI: aURIString)
		on: aStringOrStream