ui
gtEvolutionGraphIn: composite
	<gtInspectorPresentationOrder: -10>
	| b ds |
	^ composite roassal2 
		title: 'Plot';
		initializeView: [ 
			b := RTGrapher new.
			b extent: 300@ 200.
			
			ds := RTData new.
			ds points: self timeline.
			ds x: [ :assoc | self timeline indexOf: assoc ].
			ds y: [ :assoc | assoc value ].
			ds connectUsing: (RTLine new color: Color blue).
			b add: ds.
			
			b axisX 
				labelRotation: -30;
				labelConversion: [ :n | n isZero
					ifTrue: ['']
					ifFalse: [ (self timeline at: n) key ] ];
				numberOfLabels: self timeline size.
			b axisY
				title: self value.
			b build.
			b view ]