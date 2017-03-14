tests - nonempty
testNonEmptyParser2
	| p |
	context := PPContext new.
	
	context propertyAt: #foo put: #baz.
	p := [ :ctx | ctx propertyAt: #foo put: #bar ] asParser nonEmpty.
	
	result := p parse: '' withContext: context.
	self assert: (context propertyAt: #foo) = #baz. 
	self assert: result isPetitFailure.