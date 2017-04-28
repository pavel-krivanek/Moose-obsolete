actions
from: p1 to: p2
	"To be compatible with edges"
	self shapesDo: [ :s | 
		(s class canUnderstand: #from:to:) ifTrue: [ s from: p1 to: p2 ].
		(s class canUnderstand: #from:) ifTrue: [ s from: p1 ].
		(s class canUnderstand: #to:) ifTrue: [ s to: p2 ].
		 ]