hooks
initializeElement: aView
	aView canvas
		when: TRMouseWheelEvent
		do: [ :e | 
			| scale dist |
			dist := e position - aView canvas camera position.
			scale := aView canvas camera scale.
			(e isUp and: [ scale * 1.25 <= self maxZoom ])
				ifTrue: [ scale := scale * 1.25.
					dist := dist * 0.2 ]
				ifFalse: [ dist := 0 ].
			(e isDown and: [ scale * 0.8 >= self minZoom ])
				ifTrue: [ scale := scale * 0.8.
					dist := dist * -0.25 ]
				ifFalse: [ dist := 0 ].
			aView canvas camera
				scale: scale;
				translateBy: dist.
			aView signalUpdate ]