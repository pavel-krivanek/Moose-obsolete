morph initialization
newRemoveButton
	"return the button that will be used to remove a package from the selectionList to the packagesList. While no item is selected in the selectionList, this button is disable "
	

	removeButton := PluggableButtonMorphPlus
			on: self getState: nil action: #updateWhenRemovingItem.
	removeButton label: '<<<'.
	removeButton disable.
	^removeButton