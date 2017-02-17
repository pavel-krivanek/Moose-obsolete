private
withNewWriteStreamOnFileNamed: aFileName do: aBlock
	aFileName asXMLFileHandle writeStreamDo: [:writeStream |
		self initializeFileWriteStream: writeStream.
		aBlock value: writeStream]