accessing - map parameters
propertyValuesMap
	
	| block result prop |
	result := Dictionary new.
	1 to: (self wizardInformations at: #numberOfProperties) do: [:int |
		|blockString propertyValueId|
		propertyValueId := self wizardInformations at: ('property',int asString,'Name') asSymbol.
		blockString := '[:propVal | ',(self wizardInformations at: ('property',int asString ,'Mapper') asSymbol), ']'.
		result at: propertyValueId put: (Smalltalk evaluate:blockString )
		].
	^ result.
	