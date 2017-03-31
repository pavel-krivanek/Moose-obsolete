accessing - map parameters
properties
	
	^ (1 to: (self wizardInformations at: #numberOfProperties)) collect: [:int | self wizardInformations at: {'property',int asString, 'Name'} asSymbol]