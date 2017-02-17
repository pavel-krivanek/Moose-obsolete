sources
exampleBarchart

	| grapher dataSet |
	grapher := RTGrapher new.
	grapher extent: 300 @ 200.
	
	dataSet := RTData new. 
	dataSet barShape width: 10.
	dataSet 
		points: RTShape withAllSubclasses; 
		y: #numberOfMethods.
	 
	grapher add: dataSet.

	dataSet := RTData new.
	dataSet dotShape color: (Color red alpha: 0.3).
	dataSet 
		points: RTShape withAllSubclasses; 
		y: #numberOfMethods. 
	grapher add: dataSet.

	grapher axisY.
	grapher axisX noLabel.
	^ grapher