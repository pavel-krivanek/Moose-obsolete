hooks
initializeElement: anElement
	self assert: [ self presentation notNil ] description: 'The presentation has to be set'.
	
	anElement when: TRMouseLeftClick do: [ :event | 
			anElement model ifNotNil: [ self presentation selection: anElement model ] ]