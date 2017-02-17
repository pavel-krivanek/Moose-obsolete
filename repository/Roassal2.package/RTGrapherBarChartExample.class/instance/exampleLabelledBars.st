sources
exampleLabelledBars
	| b ds |
	b := RTGrapher new.
	b extent: 500 @ 200.
	ds := RTData new.
	ds interaction highlight.
	ds points: RTShape withAllSubclasses.
	ds barShape width: 10.
	ds y: #numberOfMethods.
	ds barChartWithBarTitle: #name.
	b add: ds.
	b axisY.
	b axisX
		noTick;
		noLabel.
	^ b