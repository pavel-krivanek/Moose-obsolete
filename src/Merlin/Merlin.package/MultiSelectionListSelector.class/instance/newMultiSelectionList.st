morph content setup tools
newMultiSelectionList

^ PluggableListMorphOfMany
		on: self
		list: #list
		primarySelection: #selectionSymbol
		changePrimarySelection: (#selectionSymbol, ':') asSymbol
		listSelection: #listSelectionSymbol
		changeListSelection: (#listSelectionSymbol, 'put:') asSymbol
		menu: nil.