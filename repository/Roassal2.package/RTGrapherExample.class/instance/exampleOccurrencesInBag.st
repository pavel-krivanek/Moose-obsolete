sources
exampleOccurrencesInBag

	| b ds v |
	b := Bag new.
	b add: 1 withOccurrences: 5.
	b add: 3 withOccurrences: 4.
	b add: 6.

	v := RTGrapher new.
	ds:=RTData new.
	ds interaction popup.
	ds points: b valuesAndCounts keys.
	ds y:[:c|b valuesAndCounts at: c].
	ds x: [ :c | c ].
	ds barShape color: Color red.
	v add: ds.
	v axisX numberOfLabels: 6.
	^ v