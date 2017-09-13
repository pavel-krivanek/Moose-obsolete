initialization
initialize
	super initialize.
	(isRequiredLabel := OPUmlAssociationEndLabel new)
		text: [ :model | 
			model isRequired
				ifTrue: [ '{required}' ]
				ifFalse: [ '' ] ];
		owningElement: self.
	constraints := OrderedCollection new