sources
exampleLabelledAndColored

| b s data |
data := #(     #(WP1 1 3)      #(WP2 3 6)     #(WP3 6 9)         #(WP4 9 12)     #(WP5 1 12)    ).
b := RTTimeline new.
s := RTTimelineSet new.
s shape box 
	color: Color blue trans;
	withText: #first;
	withTextColor: Color white.
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