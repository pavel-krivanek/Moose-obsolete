errors
errorLiteralReferenceToExternalGeneralEntity: anEntity
	self
		formatParseError:
			'External general entity reference {1} in attribute value'
		with: anEntity asReference