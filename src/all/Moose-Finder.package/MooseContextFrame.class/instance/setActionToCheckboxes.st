morph - creation context frame
setActionToCheckboxes
	"initialize the action to do when clicking on a checkbox"
	checkboxes do: [ :each | 
		each buttonMorph
				target: self;
				actionSelector: #updateCheckboxesWhenChangesOn:;
				arguments: {  (each label)  } ].