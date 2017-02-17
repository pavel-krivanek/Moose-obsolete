running
setUp
	| ds |
	b := RTGrapher new.
	ds := RTData new.
	ds points: #(5 10 6 2 -2.5).
	b add: ds.
	