*GT-InspectorExtensions-CoreRoassal
gtInspectorSunburstIn: composite
	<gtInspectorPresentationOrder: 40>
	| methods normalizer |
	methods := self withDeepCollect: #children.
	normalizer := RTNColorLinearNormalizer 
						inContext: methods 
						withCommand: #tally 
						lowColor: Color veryLightGray 
						highColor: Color red.
	^ composite roassal2
		title: 'Sunburst';
		initializeView: [ RTSunburstBuilder new ];
		painting: [ :b :presentation |
			b strategy radialSpacing: 1.
			b shape current
				color: normalizer.
			b
				leafWeight: #tally;
				angularSpacing: 1;
				from: (Array with: self) using: #children ];
		when: [ self children notEmpty ]