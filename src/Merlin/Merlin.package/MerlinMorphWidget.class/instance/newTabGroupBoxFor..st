utils - morph creation
newTabGroupBoxFor: labelsAndControls

	^(TabGroupMorph  new
		"font: self labelFont;"
		"cornerStyle: #rounded;"
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		labelsAndPages: labelsAndControls)
		selectedPageIndex: (labelsAndControls isEmpty ifTrue: [0] ifFalse: [1])