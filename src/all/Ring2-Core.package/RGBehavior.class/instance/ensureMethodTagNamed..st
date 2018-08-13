queries - tags
ensureMethodTagNamed: aSymbol

	^ self tagsForMethods detect: [ :each | each asSymbol = aSymbol ] ifNone: [ 
		self addMethodTag: aSymbol.
		aSymbol ]