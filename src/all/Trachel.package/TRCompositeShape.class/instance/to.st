actions
to
	"To be compatible with edges"
	self shapesDo: [ :s | 
		(s class canUnderstand: #to) ifTrue: [ ^ s to ].
		 ].
	^ nil