*GT-Examples-UI
addToSelectorEnvironment: aSelectorEnvironment
	self selector ifNil: [ ^ self ].
	
	self theClasses do: [ :class | 
		aSelectorEnvironment addClass: class selector: self selector ]