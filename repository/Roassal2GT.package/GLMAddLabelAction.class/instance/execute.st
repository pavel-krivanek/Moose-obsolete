hooks
execute
	| msg lbl height |
	self roassalView when: TRMouseDoubleClick do: [ :evt |
		msg := UIManager default request: 'Enter a label'.
		(msg notEmpty and: [ msg ~= '' ]) ifTrue: [ 
			height := (self roassalView canvas camera distanceFromPixelToSpace: 20 @ 0) x.
			lbl := (RTLabel new height: height) elementOn: msg.
			self roassalView add: lbl.
			lbl @ RTDraggable.
			lbl translateTo: evt position.			
			self roassalUpdate
		]
	].
