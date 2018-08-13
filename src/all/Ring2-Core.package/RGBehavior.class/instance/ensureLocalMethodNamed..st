queries - methods
ensureLocalMethodNamed: aSymbol

	^ self localMethodNamed: aSymbol ifAbsent: [ 
		| newMethod |
		newMethod := RGMethod named: aSymbol asSymbol parent: self.
		self addLocalMethod: newMethod.
		newMethod].