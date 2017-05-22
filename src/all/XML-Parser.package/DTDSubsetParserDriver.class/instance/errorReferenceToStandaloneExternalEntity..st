private
errorReferenceToStandaloneExternalEntity: anEntity
	XMLValidationException
		formatSignal:
			'Internal reference to externally defined ',
			'entity {1} in standalone="yes" document'
		with: anEntity asReference