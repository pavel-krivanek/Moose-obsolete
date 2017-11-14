hooks
computePath
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: listOfPoints first.
			builder 
				curveViaX: listOfPoints second x asFloat Y: listOfPoints second y asFloat
				viaX: listOfPoints third x asFloat Y: listOfPoints third y asFloat 
				toX: listOfPoints fourth x asFloat Y: listOfPoints fourth y asFloat.
		]