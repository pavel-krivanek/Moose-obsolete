morph initialization
newAddButton 
	"return the button that will be used to add a package from the packagesList to the selectionList. While no item is selected in the packagesList, this button is disable "
	

	addButton := PluggableButtonMorphPlus
			on: self getState: nil action: #updateWhenAddingItem.
	addButton label: '>>>'.
	addButton disable.
	^addButton