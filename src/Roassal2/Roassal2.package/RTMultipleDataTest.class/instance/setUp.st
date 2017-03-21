running
setUp
	super setUp.
	d := RTMultipleData new.
	d points: #( #(1 2) #(2 4) #(3 5)).
	d addMetric: #first.
	d addMetric: #second.