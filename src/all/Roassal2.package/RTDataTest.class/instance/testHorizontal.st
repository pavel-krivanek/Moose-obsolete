tests
testHorizontal

	| b ds |
	b := RTGrapher new.
	ds := RTHorizontalData new.
	ds points: #(1 2 3).
	b add: ds.
	b build.