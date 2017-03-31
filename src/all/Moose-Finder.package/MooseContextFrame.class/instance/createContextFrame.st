morph - creation context frame
createContextFrame
	"open a frame asking wich contexts have to be imported with your packages importation."
	"self disableMainFrame."

	checkboxes := OrderedCollection new.
	builder := StandardWindow new.
	dialogWindow := builder newPluggableDialogWindow: 'Context to import'.
	dialogWindow useDefaultOKButton.
	dialogWindow
		contentMorph: (dialogWindow newRow: { 
					(dialogWindow newGroupboxForAll: {(dialogWindow newRow: (self addVerticalSeparatorAtTheMiddleOf: (self newContextCheckBoxes: dialogWindow)))})
				 });
		model: nil.
	dialogWindow buttons anyOne
		actionSelector: #updateSelectedContext;
		arguments: {   };
		model: self.
	