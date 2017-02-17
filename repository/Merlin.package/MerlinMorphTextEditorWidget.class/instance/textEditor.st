accessing - morph contents
textEditor

	^ textEditor ifNil: [
		textEditor := (self newTextEditorFor: self wizardPart getText: #textEditorContents setText: #textEditorContents:)
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself
		]