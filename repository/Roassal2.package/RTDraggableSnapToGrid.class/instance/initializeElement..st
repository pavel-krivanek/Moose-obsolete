hooks
initializeElement: element
	strategy = #topLeft
		ifTrue: [ ^ self initializeElementForTopLeft: element ].
	strategy = #center
		ifTrue: [ ^ self initializeElementForCenter: element ]