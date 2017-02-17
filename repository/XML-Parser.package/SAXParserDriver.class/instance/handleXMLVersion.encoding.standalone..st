handling
handleXMLVersion: aVersion encoding: anEncoding standalone: aYesOrNo
	isStandalone := aYesOrNo = 'yes'.

	self saxHandler
		xmlVersion: (Float readFrom: aVersion readStream)
		encoding: anEncoding
		standalone: isStandalone.