private
errorReferenceToStandaloneExternalEntity: anEntity
	XMLValidationException
		formatSignal:
			'Reference to externally defined entity {1} ',
			'outside DTD in standalone="yes" document'
		with: anEntity asReference