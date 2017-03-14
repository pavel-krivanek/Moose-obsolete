hooks
initializeElement: el
	element ifNil: [ 
		element := el.
		super initializeElement: el. ]
	ifNotNil: [ self class new initializeElement: el "hack for RTHTML5Exporter" ].
	
	