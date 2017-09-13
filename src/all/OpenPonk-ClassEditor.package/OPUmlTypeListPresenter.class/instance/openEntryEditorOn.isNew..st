actions
openEntryEditorOn: anEntry isNew: isNew
	| control pane nameField |
	control := WizardControl new.
	pane := WizardSinglePane new.
	pane name: 'New Entity'.
	nameField := TextFieldPart new
		inGroupboxNamed: 'Entity name';
		defaultValue: anEntry name;
		horizontalSize: 300;
		yourself.
	pane addPart: nameField associatedTo: #name.
	control addPane: pane.
	control
		atEndDo: [ :vals | 
			anEntry name: (vals at: #name).
			isNew
				ifTrue: [ orphanedItems add: anEntry ].
			self refreshList ].
	control open