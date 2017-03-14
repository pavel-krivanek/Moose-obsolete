accessing - map parameters
propertyColorMap
	
	| result  |
	result := Dictionary new.
	1 to: (self wizardInformations at: #numberOfProperties) do: [ :number |
		|propertyValueId|
		propertyValueId := self wizardInformations at: ('property', number asString,'Name') asSymbol.
		result 
				at: propertyValueId 
				put: (self colorCollection at: (self wizardInformations at: ('property',number asString,'Color') asSymbol)).
		].
	
	^ result