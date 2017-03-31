hooks
initializeElement: aView
	self assert: [ self presentation notNil ] description: 'The presentation has to be set'.
	
	aView elements do: [:each |  
		each when: TRMouseLeftClick do: [ :event | 
			each model ifNotNil: [ self presentation selection: each model ] ] ].