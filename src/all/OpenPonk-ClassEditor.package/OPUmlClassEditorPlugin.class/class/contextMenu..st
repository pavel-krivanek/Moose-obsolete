toolbar
contextMenu: aBuilder
	<opModelNavigatorContextMenu>
	| navigator selectedItem |
	navigator := aBuilder model.
	selectedItem := navigator selectedItem.
	(selectedItem oclIsKindOf: #Package)
		ifTrue: [ (aBuilder item: 'Export as XMI...') action: [ self exportPackage: selectedItem ].
			(aBuilder item: 'Import from XMI...') action: [ self importToPackage: selectedItem ] ]