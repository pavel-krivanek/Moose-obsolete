*GT-Examples-UI
addToSelectorEnvironment: aSelectorEnvironment
	self exists ifFalse: [ ^ self ].
	
	super addToSelectorEnvironment: aSelectorEnvironment.
	self theSubclasses do: [ :class | 
		class asGTExampleSubject addToSelectorEnvironment: aSelectorEnvironment ]