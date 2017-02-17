utils - morph creation
newDropListOn: aModel list: aSelector
			
	| morph |
	morph := (DropListMorph
			on: (aModel)
			list: aSelector
			selected: #selectionIndex
			changeSelected: #selectionIndex:
			useIndex: true)
		"cornerStyle: #rounded;"
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		yourself.
		
	
	^ morph.