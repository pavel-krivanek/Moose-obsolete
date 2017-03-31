accessing - morphs
removeButtonMorph
	"return the button that will be used to remove a package from the selectionList to the packagesList. While no item is selected in the selectionList, this button is disable "
	
	^ removeButtonMorph ifNil: [
		removeButtonMorph := (PluggableButtonMorph
			on: self getState: nil action: #updateWhenRemovingItem)
	 			label: '<<<';
				disable;
				yourself
		]