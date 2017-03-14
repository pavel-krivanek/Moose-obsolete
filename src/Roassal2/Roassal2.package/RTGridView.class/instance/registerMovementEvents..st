hooks
registerMovementEvents: aCanvas
	aCanvas camera
		addCallback:
			(TRTranslationCallback
				block: [ :shape :step | 
					gridShape addToOffset: step.
					gridShape signalUpdate ]).
	aCanvas when: TRMouseWheelEvent do: [ :e | gridShape resetPath ]