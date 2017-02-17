tests
testLabelsTopPosition
	| b elements firstRow|
	b := RTDSM new.
	b objectsY: (1 to: 3).
	b objectsX: #(#a #b #c).
	b dependency: [ :aValue | aValue + 1 ].
	b build.
	elements := b view elements select: [ :e | 
		e trachelShape class = TRLabelShape and: [ e model isString ] ]. 
	firstRow := b rowAt: 1.
	firstRow doWithIndex: [ :e :i | 
		self assert: e position x equals: (elements at: i) position x ].