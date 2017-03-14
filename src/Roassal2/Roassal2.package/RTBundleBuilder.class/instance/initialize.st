initialization
initialize
	super initialize.
	self shape circle.
	self defaultInteractions.
	self defaultSliderShape.
	elements := RTGroup new.
	label := RTRotatedLabel new.
	edges := RTEdgeBuilder new.
	layoutBuilder := RTLayoutBuilder new.
	layoutBuilder cluster.
	bezier := RTBezierLine new.
	connectBezierBlock := nil.
	bezier
		follow:  [ :m | self parentOf: m view: view ];
		tension: 0.5.
	self edgeBuilderDo: [:ebuilder| 
		ebuilder connectToAll: connectBezierBlock. ].