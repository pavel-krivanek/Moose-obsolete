building
complexityIn: a
	^ a roassal2
		initializeView: [ RTMondrian new ];
		painting: [ :view :group :height :width :color :presentation | 
			group key
				viewSimpleSystemComplexityWithSelection: OrderedCollection new
				height: [:e | (height value:e) max: 5]
				width: [:e | (width value:e) max: 5]
				color: color
				on: view ]