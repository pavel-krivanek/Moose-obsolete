hooks
renderIn: aView
	elements ifNil: [ elements := RTGroup new ].
	self interaction setUpElements: elements.
	aView addAll: elements.
	self computeSankey.
	lelements ifNil: [ lelements := RTGroup new ].
	aView addAll: lelements.
	self updateNodes.