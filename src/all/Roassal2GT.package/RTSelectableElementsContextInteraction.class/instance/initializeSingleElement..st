hooks
initializeSingleElement: each
	^ each
		when: TRMouseLeftClick
		do:
			[ :event | each model ifNotNil: [ self presentation selection: each model ] ]