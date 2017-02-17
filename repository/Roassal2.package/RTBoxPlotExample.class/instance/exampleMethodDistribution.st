sources
exampleMethodDistribution

| b ds |
b := RTGrapher new.
b extent: 400 @ 200.
RTShape withAllSubclasses do: [ :cls |
	ds := RTBoxPlotDataSet new.
	ds points: (cls rtmethods collect: #numberOfLinesOfCode).
	b add: ds.
].
b build.
^ b view