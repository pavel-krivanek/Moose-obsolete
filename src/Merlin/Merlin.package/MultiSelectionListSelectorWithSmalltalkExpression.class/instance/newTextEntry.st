morph content setup tools
newTextEntry
	
	"^textEntry := PluggableTextFieldMorph new
		on: self 
		text: #textEntryContents
		accept: #textEntryContents:
		readSelection: nil
		menu: nil."
		
	| pt |
	pt := PluggableTextFieldMorph new
		convertTo: String;
		alwaysAccept: true;
		on: self
		text: #textEntryContents
		accept: #textEntryContents:
		readSelection: nil
		menu: nil;
		acceptOnCR: true;
		"getEnabledSelector: enabledSel;"
		font: StandardFonts defaultFont;
		cornerStyle:  #rounded;
		hResizing: #rigid"#spaceFill";
		vResizing: #rigid;
		borderStyle: (BorderStyle inset width: 1);
		color: Color white;
		"selectionColor: self selectionColor;"
		hideScrollBarsIndefinitely;
		extent: 280@(StandardFonts defaultFont height + 8);
		"setBalloonText: helpText."
		yourself.
		
	pt textMorph
		autoFit: true;
		wrapFlag: false;
		margins: (2@1 corner: 2@1).
	^textEntry := pt
		