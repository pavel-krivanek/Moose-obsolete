accessing - morph
setActionToCheckboxes: anActionSelector withArguments: aCollectionOfArguments
	"initialize the action to do when clicking on a checkbox. actionSelector must be implemented in this class or its subclasses"
	self actionSelector: anActionSelector.
	self actionArguments: aCollectionOfArguments.
	allCheckboxes do: [ :each | 
		each buttonMorph
				target: self;
				actionSelector: anActionSelector ;
				arguments: aCollectionOfArguments  ].