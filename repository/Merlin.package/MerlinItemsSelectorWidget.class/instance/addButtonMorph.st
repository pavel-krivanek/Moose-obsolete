accessing - morphs
addButtonMorph
	"return the button that will be used to add a package from the packagesList to the selectionList. While no item is selected in the packagesList, this button is disable "
	
	^ addButtonMorph ifNil: [
		addButtonMorph := (PluggableButtonMorph
			on: self getState: nil action: #updateWhenAddingItem)
	 			label: '>>>';
				disable;
				yourself
		]