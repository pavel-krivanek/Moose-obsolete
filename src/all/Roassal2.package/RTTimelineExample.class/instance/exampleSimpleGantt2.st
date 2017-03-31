sources
exampleSimpleGantt2

| b s data |
data := #(     #(WP1 0 4)      #(WP2 4 8)     #(WP3 8 12)         #(WP4 3 4)     #(WP4 7 9)     #(WP4 10 12)   

  ).
b := RTTimeline new.
s := RTTimelineSet new.
s objects: data.
s lineIdentifier: #first.
s start: #second.
s end: #third.
b add: s.
b axisX
	noDecimal;
	title: 'Month';
	numberOfLabels: 12.
b build.
^ b view