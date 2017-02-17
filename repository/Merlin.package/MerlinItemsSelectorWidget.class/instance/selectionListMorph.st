accessing - morphs
selectionListMorph
	"return a new list (PluggableListMorph) that will contain all the packages selected by the user"
	^selectionListMorph ifNil: [
		selectionListMorph := ( self newListFor: self 
			list: #selectionList
			selected:  #selectionListIndex
			changeSelected: #selectionListIndex:)
		minWidth: 250;
		minHeight: 350;
		yourself]