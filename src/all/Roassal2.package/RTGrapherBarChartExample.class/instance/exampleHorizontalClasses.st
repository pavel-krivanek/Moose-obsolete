sources
exampleHorizontalClasses

| b ds hasTest |
hasTest := [ :cls | Smalltalk hasClassNamed: cls name, 'Test' ].

b := RTGrapher new.
b extent: 500@500.
ds := RTHorizontalData new.
ds points: RTShape withAllSubclasses.
ds barShape 
	color: Color purple trans;
	if: hasTest color: Color green trans.

ds interaction popupText: [ :cls | cls name, '
LOC: ', cls numberOfLinesOfCode asString ].
ds x: [ :cls | cls numberOfLinesOfCode * 
	( (hasTest value: cls) 
		ifTrue: [ 1 ]
		ifFalse: [ -1 ] ) ].
b add: ds.
b axisY decimalIfNecessary.
b axisX numberOfTicks: 4.
^ b
