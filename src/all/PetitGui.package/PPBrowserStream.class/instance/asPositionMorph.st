converting
asPositionMorph
	| width height canvas morph |
	width := self size + 1 min: 4096.
	height := self positions size min: 32768.
	canvas := FormCanvas extent: width @ height.
	self contents keysAndValuesDo: [ :index :char |
		char isSeparator 
			ifFalse: [ canvas line: index @ 1 to: index @ height color: Color paleBlue ] ].
	1 to: height do: [ :index |
		canvas form colorAt: (self positions at: index) @ index put: Color black ].
	morph := canvas form asMorph.
	morph 
		on: #mouseDown
		send: #mouseDown:with:
		to: self.
	^ morph