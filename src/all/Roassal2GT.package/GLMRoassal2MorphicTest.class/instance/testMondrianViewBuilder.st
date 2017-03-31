tests
testMondrianViewBuilder
	| composite |
	composite := GLMCompositePresentation new.
	composite roassal2 
					initializeView: [ RTMondrian new ];
					painting: [ :view | view nodes: (1 to: 42) ].
	window := composite openOn: 42.
	self assert: composite first view class = RTMondrian.
	self assert: composite first view view elements size = 42