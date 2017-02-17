actions
updateCheckboxesWhenChangesOn: contextName 
	" when the context contextName has been selected or deselected, update all the others contexts checkboxes that are linked to this context "
	| dependenciesForContext contextCheckBox |
	contextCheckBox := self checkboxForContextNamed: contextName .
	
	({#pressed. #on} includes: contextCheckBox buttonMorph state) 
		ifTrue: 
			[ 
				dependenciesForContext := self dependenciesFor: { (contextName asSymbol)}.
				self updateCheckboxesNamed: dependenciesForContext  withState: #on.
			]
		ifFalse: 
			[ 
				dependenciesForContext := self revertDependenciesFor: {(contextName asSymbol)}.
				self updateCheckboxesNamed: dependenciesForContext  withState: #off  .
			].
	self updateSelectedContext . 