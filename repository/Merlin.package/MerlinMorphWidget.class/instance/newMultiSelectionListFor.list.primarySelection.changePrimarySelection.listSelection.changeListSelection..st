utils - morph creation
newMultiSelectionListFor: aModel list: listSelector primarySelection: primarySelectionSelector changePrimarySelection: changePrimarySelectionSelector listSelection: listSelectionSelector changeListSelection: changeListSelectionSelector

^ (PluggableListMorph
		on: aModel
		list: listSelector 
		primarySelection: primarySelectionSelector 
		changePrimarySelection: changePrimarySelectionSelector 
		listSelection: listSelectionSelector 
		changeListSelection: changeListSelectionSelector
		menu: nil )
		font: StandardFonts defaultFont;
		autoDeselect: false;
		"cornerStyle: #rounded;"
		color: Color white;
		borderStyle: (BorderStyle inset width: 1);
		hResizing: #spaceFill;
		vResizing: #spaceFill; yourself.