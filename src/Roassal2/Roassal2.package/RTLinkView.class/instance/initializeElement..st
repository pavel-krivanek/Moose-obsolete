hooks
initializeElement: element
	element when: TRMouseLeftClick do: [ 
		showView ifTrue: [ (self viewFor: element) inspect ]. ].