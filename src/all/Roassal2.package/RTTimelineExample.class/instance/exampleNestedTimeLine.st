sources
exampleNestedTimeLine

	| b s data |
	data := #(#(c1 0 5 1) #(c1 3 8 2) #(c2 0 9 1) #(c2 3 5 2) #(c2 6 8 2)).

	b := RTTimeline new.
	
	s := RTSubTimelineSet new.
	s objects: data.
	s lineIdentifier: #first.
	s start: #second.
	s end: #third.
	s level: #fourth.
	b add: s.
	
	b axisX 
		numberOfLabels: 5;
		labelRotation: -45;
		labelConversion: [ :v | Date year: 2015 day: v ]. 
	^ b 