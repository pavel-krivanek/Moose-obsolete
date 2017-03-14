*GT-Examples-UI
gtInspectorRoassalIn: composite
	<gtInspectorPresentationOrder: 1>
	self hasDependencies ifFalse: [ ^ self ].
	(Smalltalk classNamed: #GLMRoassal2Presentation) ifNil: [ ^ self ].
	^ composite roassal2
		title: 'Graph';
		painting: [ :view :example | 
			(GTExampleGraphPainter new 
				example: example;
				view: view;
				yourself) paint ];
		yourself