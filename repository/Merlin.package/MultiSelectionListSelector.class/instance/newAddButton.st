morph content setup tools
newAddButton 
	"return the button that will be used to add a package from the packagesList to the selectionList. While no item is selected in the packagesList, this button is disable "
	

	addButton := self newButtonNamed: '>>>' withAction: #updateWhenAddingItem.
	addButton disable.
	^addButton