tests
testStackedData
	| data b ds |
	data := (-20 to: 20).
	 
	b := RTGrapher new.
	b extent: 300 @ 200.
	ds := RTData new.
	ds interaction popup.
	ds points: data.
	ds barShape width: 8; 
	      color: (Color green alpha: 0.3);
	     if: [:value | value < 0 ] fillColor: (Color red alpha: 0.3).
	b add: ds.
	b build.
	^ b view