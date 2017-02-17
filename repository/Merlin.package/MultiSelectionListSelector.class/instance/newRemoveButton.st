morph content setup tools
newRemoveButton 
	"return the button that will be used to add a package from the packagesList to the selectionList. While no item is selected in the packagesList, this button is disable "
	

	removeButton := self newButtonNamed: '<<<' withAction: #updateWhenRemovingItem.
	removeButton disable.
	^removeButton