accessing - morph contents
setActionToCheckboxes 

	"initialize the action to do when clicking on a checkbox"
	self allCheckboxes do: [ :each | 
		each buttonMorph target: self wizardPart actionModel.
		self wizardPart actionSelector ifNotNil: [each actionSelector: self wizardPart actionSelector].
		self wizardPart actionArguments ifNotNil: [each actionArguments: self wizardPart actionArguments].
		].