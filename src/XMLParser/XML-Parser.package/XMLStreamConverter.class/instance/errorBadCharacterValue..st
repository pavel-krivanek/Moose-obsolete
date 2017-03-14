private
errorBadCharacterValue: aValue
	XMLEncodingException
		formatSignal: 'Invalid character 0x{1} for {2} encoding'
		with: aValue printStringHex
		with: self encoding