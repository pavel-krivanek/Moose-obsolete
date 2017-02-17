sources
examplePointAspects
	| b ds |
	b := RTGrapher new.

	ds := RTData new.
	ds dotShape rectangle color: Color red.
	ds points: (RTShape withAllSubclasses sortedAs: #ageInDays).
	ds y: [ :c | c ageInDays ].
	b add: ds.

	ds := RTData new.
	ds dotShape circle color: Color blue.
	ds points: (TRShape withAllSubclasses sortedAs: #ageInDays).
	ds y: [ :c | c ageInDays ].
	b add: ds.

	b axisX noDecimal; title: 'Classes'.
	b axisY noDecimal; title: 'Age in days'.

	b build.

	^ b view