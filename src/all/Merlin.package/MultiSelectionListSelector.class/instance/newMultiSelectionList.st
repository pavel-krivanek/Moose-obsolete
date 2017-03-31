morph content setup tools
newMultiSelectionList

^ PluggableListMorph
		on: self
		list: #list
		primarySelection: #selectionSymbol
		changePrimarySelection: (#selectionSymbol, ':') asSymbol
		listSelection: #listSelectionSymbol
		changeListSelection: (#listSelectionSymbol, 'put:') asSymbol
		menu: nil.