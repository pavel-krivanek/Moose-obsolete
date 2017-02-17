public-typing
typeInstvarsOfClass: aClass
	| extractor|
	self onClass: aClass.
	extractor := self newExtractor.
	
	aClass selectorsAndMethodsDo:
			[:sel :method |
			currentExtractedMethod := method. 
			"(method selector = #blockReturn:) ifTrue: [self halt]".
			extractor
				extractInterfacesFrom: method
				addTo: self].
	^self packagedResults