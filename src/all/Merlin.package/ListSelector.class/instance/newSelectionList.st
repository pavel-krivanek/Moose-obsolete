morph initialization
newSelectionList
	"return a new list (PluggableListMorph) that will contain all the packages selected by the user"
	^( self newListFor: self 
			list: #selectionList
			selected:  #selectionListSelectionIndex
			changeSelected: #selectionListSelectionIndex:)
		minWidth: 250;
		minHeight: 350;
		yourself