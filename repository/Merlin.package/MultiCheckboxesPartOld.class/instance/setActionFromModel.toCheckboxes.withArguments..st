accessing - morph
setActionFromModel: aModel toCheckboxes: anActionSelector withArguments: aCollectionOfArguments
	"initialize the action to do when clicking on a checkbox. actionSelector must be implemented in this class or its subclasses"
	self actionModel: aModel.  
	self actionSelector: anActionSelector.
	self actionArguments: aCollectionOfArguments.
	allCheckboxes do: [ :each | 
		each buttonMorph
				target: self model;
				actionSelector: anActionSelector ;
				arguments: aCollectionOfArguments  ].