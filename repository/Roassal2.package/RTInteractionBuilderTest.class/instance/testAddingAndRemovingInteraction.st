tests
testAddingAndRemovingInteraction
	builder addInteraction: RTDraggable new.
	self assert: builder numberOfInteractions equals: 1.
	
	builder removeInteractionOfType: RTAbstractDraggable.
	self assert: builder numberOfInteractions equals: 0.
	
	builder addInteraction: RTConstrainedDraggable new.
	self assert: builder numberOfInteractions equals: 1.
	
	builder removeInteractionOfType: RTAbstractDraggable.
	self assert: builder numberOfInteractions equals: 0.
