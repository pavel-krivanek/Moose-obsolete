morph initialization
newInitialList
	"return a new list (PluggableListMorph) that will contain the initial list of items that can be selected by the user"

		^ (self newListFor: self list: #list  selected: #listSelectionIndex changeSelected: #packagesListSelectionIndex: )
		minWidth: 250;
		minHeight: 350; yourself