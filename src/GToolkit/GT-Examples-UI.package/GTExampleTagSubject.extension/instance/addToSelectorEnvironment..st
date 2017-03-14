*GT-Examples-UI
addToSelectorEnvironment: aSelectorEnvironment
	self thePackage ifNil: [ ^ self ].
	
	self thePackage classes do: [ :class | 
		aSelectorEnvironment addClass: class ]