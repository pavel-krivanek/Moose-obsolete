list control
selectedItem: anItem

	(self list includes: anItem) ifTrue: [
		self selectionIndex: (self list indexOf: anItem)  
		]