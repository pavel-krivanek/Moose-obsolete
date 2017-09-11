hooks
initializeElement: aView
	view := aView.
	self position: [ :e | e attributes at: #position ].
	view when: TRMouseMove do: [ :evt |
		self focus: evt position.
		view elements do: [ :e | | fisheye |
			(e attributes includesKey: #position) 
				ifFalse: [ e attributes at: #position put: e position ].
			fisheye := self scale: e.
			e attributes at: #fisheye put: fisheye.
			e translateTo:  fisheye x@ fisheye y.
			e trachelShape class = TREllipseShape
				ifTrue: [ e trachelShape extent: (fisheye y0 * 9) asPoint ].
			]. 
		view signalUpdate ].
	
	