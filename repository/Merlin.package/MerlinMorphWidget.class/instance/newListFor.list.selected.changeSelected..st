utils - morph creation
newListFor: aModel list: listSelector selected: getSelector changeSelected: setSelector
	"return a PluggableListMorph. the value of the list will be accessed by the selector listSelector (send to aModel). the index of the current item selected will be accessed by getSelector (send to aModel) and set by the selector setSelector (send to aModel)."
	^PluggableListMorph new
		"selectionColor: self selectionColor;"
		font: TextStyle defaultFont;
		on: aModel
		list: listSelector
		selected: getSelector
		changeSelected: setSelector
		menu: nil
		keystroke: nil;
		autoDeselect: false;
		"cornerStyle: #rounded;"
		color: Color white;
		borderStyle: (BorderStyle inset width: 1);
		hResizing: #spaceFill;
		vResizing: #spaceFill; yourself.
		"getEnabledSelector: enabledSel;
		setBalloonText: helpText"