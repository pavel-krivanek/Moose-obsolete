morph content setup tools
setActionToCheckboxes
	"initialize the action to do when clicking on a checkbox"
	allCheckboxes do: [ :each | 
		each buttonMorph
				target: self;
				actionSelector: #updateCheckboxesWhenChangesOn:;
				arguments: {  (each label)  } ].