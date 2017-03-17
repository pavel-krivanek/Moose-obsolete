initialization
setUp
	super setUp.
	d := RTHorizontalMultipleData new.
	d points: #( #(1 2) #(2 4) #(3 5)).
	d addMetric: #first.
	d addMetric: #second.