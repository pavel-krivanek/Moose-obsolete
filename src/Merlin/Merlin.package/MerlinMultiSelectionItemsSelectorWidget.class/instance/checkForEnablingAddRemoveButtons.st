accessing - morphs
checkForEnablingAddRemoveButtons 
	
	"we disable or enable the addButton according the selection list has selected items or not. "
	self wizardPart nothingSelectedInSelectionList 
		ifTrue: [self removeButtonMorph disable]
		ifFalse: [self removeButtonMorph enable].
		
	self wizardPart nothingSelectedInInitialList 
		ifTrue: [ self addButtonMorph disable]
		ifFalse: [self addButtonMorph enable]
		
			

	