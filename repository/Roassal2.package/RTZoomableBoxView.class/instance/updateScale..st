initialization
updateScale: evt
	| s r sc |
	s := evt shape.
	(s extent x <= 0 or: [ s extent y <= 0 ])
		ifTrue: [ view canvas focusOnCenterScaled ]
		ifFalse: [ 
			r := s encompassingRectangle.
			(r extent x isZero or: [ r extent y isZero ]) ifTrue: [ ^ self ].
			sc := (view canvas extent * 0.9) / r extent.
			sc := (sc x < sc y) ifTrue: [sc x] ifFalse: [ sc y ].
			view canvas camera 
				translateTo: r center;
				scale: sc ].
	view signalUpdate.