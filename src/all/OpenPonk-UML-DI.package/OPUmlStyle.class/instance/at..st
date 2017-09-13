accessing
at: aSymbol
	^ properties
		at: aSymbol
		ifAbsent:
			[ 
			self styledElement sharedStyle = self
				ifTrue: [ self styledElement owningElement sharedStyle at: aSymbol ]
				ifFalse: [ self styledElement sharedStyle at: aSymbol ] ]