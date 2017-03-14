public-typing
typeTmpsIn: aCompiledMethod ofClass: aClass
	| extractor|
	self onClass: aClass.
	extractor := self newExtractor.
	
	aClass selectorsAndMethodsDo:
			[:sel :method |
			currentExtractedMethod := method. 
			"(method selector = #cssClass:) ifTrue: [self halt]".
			extractor
				extractInterfacesFrom: method
				addTo: self].
	^self packagedResultsForCompiledMethod: aCompiledMethod