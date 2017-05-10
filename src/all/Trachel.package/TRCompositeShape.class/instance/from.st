actions
from
	"To be compatible with edges"
	self shapesDo: [ :s | 
		(s class canUnderstand: #from) ifTrue: [ ^ s from ].
		 ].
	^ nil