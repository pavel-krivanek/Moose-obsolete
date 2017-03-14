utils - morph creation
newTextEntryFor: aModel getText: getTextSelector setText: setTextSelector

		
	| pt |
	pt := PluggableTextFieldMorph new
		convertTo: String;
		alwaysAccept: true;
		on: aModel
		text: getTextSelector
		accept: setTextSelector
		readSelection: nil
		menu: nil;
		acceptOnCR: true;
		"getEnabledSelector: enabledSel;"
		"font: StandardFonts defaultFont;"
		"cornerStyle:  #rounded;"
		hResizing: #spaceFill"#rigid";
		vResizing: #rigid;
		"borderStyle: (BorderStyle inset width: 1);
		color: Color white;"
		"selectionColor: self selectionColor;"
		hideScrollBarsIndefinitely;
		extent: 24@ (StandardFonts defaultFont height + 8);
		"setBalloonText: helpText."
		yourself.
	pt textMorph
		autoFit: true;
		wrapFlag: false;
		margins: (2@1 corner: 2@1).
		
	^ pt.