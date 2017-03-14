morph content setup tools
newTextEditorFor: aModel getText: getSel setText: setSel
	"Answer a text editor for the given model."

	^ (PluggableTextEditorMorph new)
		on: aModel
			text: getSel
			accept: setSel
			readSelection: nil
			menu: nil;
		"font: self textFont;"
		cornerStyle: #rounded;
		hResizing: #rigid;
		vResizing: #spaceFill;
		borderStyle: (BorderStyle inset width: 1);
		"extent: 800@(Preferences standardDefaultTextFont height + 8);"
		color: Color white.
		"selectionColor: self selectionColor"	
			"getEnabledSelector: enabledSel;" 