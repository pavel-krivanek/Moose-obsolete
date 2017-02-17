tests
testBasic02

	| b ds |
	b := RTGrapher new.
	ds := RTData new. 
	ds barShape.
	ds points: #(5 1 20 8 5 1 20 8 5 1 20 8).
	ds y: [ :v | v ].
	b add: ds.
	b build

