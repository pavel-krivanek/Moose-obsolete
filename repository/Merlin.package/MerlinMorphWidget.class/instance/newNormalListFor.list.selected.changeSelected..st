utils - morph creation
newNormalListFor: aModel list: listSelector selected: getSelector changeSelected: setSelector

	^(PluggableListMorph 
		"selectionColor: self selectionColor;
		font: self listFont;"
		on: aModel
		list: listSelector
		selected: getSelector
		changeSelected: setSelector)
		"menu: nil
		keystroke: nil;
		autoDeselect: false;"
		"cornerStyle: #rounded;"
		color: Color white;
		borderStyle: (BorderStyle inset width: 1);
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself