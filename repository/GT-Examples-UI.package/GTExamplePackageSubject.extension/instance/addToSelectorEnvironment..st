*GT-Examples-UI
addToSelectorEnvironment: aSelectorEnvironment
	self thePackage ifNil: [ ^ self ].
	
	self thePackage classes do: [ :class | 
		aSelectorEnvironment addClass: class ].
	self thePackage extensionMethods do: [ :method | 
		aSelectorEnvironment addClass: method methodClass selector: method selector ]