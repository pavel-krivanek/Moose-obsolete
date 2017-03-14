private
sourceLanguage
	
	^self isEmpty not
		ifTrue: [self first first referenceModel sourceLanguage asSymbol]
		ifFalse: [#'']