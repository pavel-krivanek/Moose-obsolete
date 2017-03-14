tests
testDep

	| dsm v ts |
	dsm := RTDSM new.
	dsm doNotShowLabels.
	dsm objects: (1 to: 10).
	dsm dependency: [ :aValue | aValue // 2 ].
	dsm build.
	v := dsm view.
	self assert: v numberOfElements equals: 100.
	
	ts := v elements collect: [ :e | e trachelShape color ].
	self assert: ts asSet size equals: 2 
