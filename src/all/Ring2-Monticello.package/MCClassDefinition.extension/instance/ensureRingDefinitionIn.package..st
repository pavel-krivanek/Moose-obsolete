*Ring2-Monticello
ensureRingDefinitionIn: anRGEnvironment package: anRGPackageDefinition
	
	| def |
	
	def := self ensureRingDefinitionIn: anRGEnvironment.
	def package: anRGPackageDefinition.
	def category: def tags first. "fix tags to do not contain package names"
	^ def