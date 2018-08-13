private - backend access
classVariables: aCollectionOfSymbols

	self cleanClassVariables.
	aCollectionOfSymbols do: [ :classVarName |
		self addClassVariable: (RGClassVariable named: classVarName asSymbol parent: self).].