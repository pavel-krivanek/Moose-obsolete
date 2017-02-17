errors
errorReferenceToUnparsedGeneralEntity: anEntity
	self
		formatParseError: 'Illegal unparsed general entity reference {1}'
		with: anEntity asReference