sources
exampleCrosses
	| b ds |
	b := RTGrapher new.
	b extent: 300 @ 300.
	ds := RTData new.
	ds dotShape cross color: (Color red alpha: 0.3).
	ds points: (RTShape withAllSubclasses flatCollect: #rtmethods).
	ds x: #numberOfLinesOfCode.
	ds y: [ :m | m sourceCode size ].
	b add: ds.
	^ b