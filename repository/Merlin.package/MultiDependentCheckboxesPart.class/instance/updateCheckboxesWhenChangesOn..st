actions
updateCheckboxesWhenChangesOn: contextName 
	" when the context contextName has been selected or deselected, update all the others contexts checkboxes that are linked to this context "
	| dependenciesForContext contextCheckBox |
	contextCheckBox := self checkboxForContextNamed: contextName .
	
	(contextCheckBox contents) 
		ifTrue: 
			[ 
				dependenciesForContext := self dependenciesFor: { (contextName asSymbol)}.
				self updateCheckboxesNamed: dependenciesForContext  withState: true.
			]
		ifFalse: 
			[ 
				dependenciesForContext := self revertDependenciesFor: {(contextName asSymbol)}.
				self updateCheckboxesNamed: dependenciesForContext  withState: false.
			].