*Ring2-Monticello
ensureRingDefinitionIn: anRGEnvironment package: anRGPackageDefinition
	
	| def  |
	
	def := self ensureRingDefinitionIn: anRGEnvironment.
	def package: anRGPackageDefinition.

	^ def
