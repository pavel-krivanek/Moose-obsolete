errors
errorSelfReferentialEntity: anEntity
	self
		formatParseError: 'Illegal self-referential {1} entity'
		with: anEntity asReference