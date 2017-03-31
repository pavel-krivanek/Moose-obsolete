actions
populateContents: aCollectionOfMorphElement
	"Set the morph contents of this WizardPart. Create a panel morph containing all the elements in aCollectionOfMorphElements one under the other"
	 	
	blockContents := PanelMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent; "non pane color tracking"
		changeTableLayout;
		cellInset: 8; yourself.
		
	aCollectionOfMorphElement do: [:each | blockContents addMorphBack: each ].
	^blockContents