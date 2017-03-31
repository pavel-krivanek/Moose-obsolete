initialize
initializeRectangles
	rectangles := OrderedCollection new.
	self emptyRectangles: 4.
	rectangles add: (PyramidRectangle new 
		color: Color paleGreen; 
		text: 'ANDC';
		popup: 'Average Number of Derived Classes';
		yourself ).
	rectangles add: (PyramidRectangle new 
		color: [self colorForMetric: #ANDC withValue: self andc]; 
		textColor: Color white;
		calculation: [self truncatedStringForFraction: self andc];
		popup: 'Average number of derived classes.
First sign of how extensively abstractions
are refined by means of inheritance';
		yourself ).
	self emptyRectangles: 7.
	rectangles add: (PyramidRectangle new 
		color: Color paleGreen; 
		text: 'AHH';
		popup: 'Average Hierarchy Height';
		yourself ).
	rectangles add: (PyramidRectangle new 
		color: [self colorForMetric: #AHH withValue: self ahh]; 
		textColor: Color white;
		calculation: [self truncatedStringForFraction: self ahh];
		popup: 'Average Hierarchy Height.
Tell us how deep the class hierarchies are';
		yourself ).
	self emptyRectangles: 6.
	rectangles add: (PyramidRectangle new 
		color: [self colorForMetric: #NocNop withValue: metrics nocNop]; 
		textColor: Color white;
		calculation: [metrics nocNop];
		popup: 'High-level Structuring (NOC/Package).
Indicates if packages tend to be coarse grained or fine grained';
		yourself ).
	rectangles add: (PyramidRectangle new 
		color: Color paleYellow; 
		text: 'NOP';
		popup: 'Number Of Packages';
		yourself ).
	rectangles add: (PyramidRectangle new 
		color: Color paleYellow;  
		calculation: [self nop];
		popup: 'Number Of Packages';
		yourself ).
	self emptyRectangles: 5.
	rectangles add: (PyramidRectangle new 
		color: [self colorForMetric: #NomNoc withValue: metrics nomNoc]; 
		textColor: Color white;
		calculation: [metrics nomNoc];
		popup: 'Class structuring (NOM/Class).
Reveals how operations are distributed among classes';
		yourself ).
	rectangles add: (PyramidRectangle new 
		color: Color paleYellow; 
		text: 'NOC';
		popup: 'Number Of Classes';
		yourself ).
	self yellowRectangles: 1.
	rectangles add: (PyramidRectangle new 
		color: Color paleYellow;  
		calculation: [self noc];
		popup: 'Number Of Classes';
		yourself ).
	self emptyRectangles: 4.
	rectangles add: (PyramidRectangle new 
		color: [self colorForMetric: #LocNom withValue: metrics locNom]; 
		textColor: Color white;
		calculation: [metrics locNom];
		popup: 'Operation Structuring (LOC/Operation).
Indication of how well the code is distributed among operations';
		yourself ).
	rectangles add: (PyramidRectangle new 
		color: Color paleYellow; 
		text: 'NOM';
		popup: 'Number Of Methods';
		yourself ).
	self yellowRectangles: 2.
	rectangles add: (PyramidRectangle new 
		color: Color paleYellow;  
		calculation: [self nom];
		popup: 'Number Of Methods';
		yourself ).	
	rectangles add: (PyramidRectangle new 
		color: Color lightMagenta; 
		text: 'NOM';
		popup: 'Number Of Methods';
		yourself ).
	rectangles add: (PyramidRectangle new 
		color: [self colorForMetric: #CallsNom withValue: metrics callNom]; 
		textColor: Color white;
		calculation: [metrics callNom];
		popup: 'Coupling intensity (CALLS/Operation).
Tell us how many other operations are called on average from each operation';
		yourself ).
	self emptyRectangles: 1.
	rectangles add: (PyramidRectangle new 
		color: [self colorForMetric: #CycloLoc withValue: metrics cycloLoc]; 
		textColor: Color white;
		calculation: [metrics cycloLoc];
		popup: 'Intrinsic operation complexity (CYCLO/Code Line).
Characterizes how much conditional complexity we are to expect in operations';
		yourself ).
	rectangles add: (PyramidRectangle new 
		color: Color paleYellow; 
		text: 'LOC';
		popup: 'Lines Of Code';
		yourself ).
	self yellowRectangles: 3.
	rectangles add: (PyramidRectangle new 
		color: Color paleYellow;  
		calculation: [self loc];
		popup: 'Lines Of Code';
		yourself ).	
	rectangles add: (PyramidRectangle new 
		color: Color lightMagenta;  
		calculation: [self calls];
		popup: 'Number Of Invocations';
		yourself ).	
	rectangles add: (PyramidRectangle new 
		color: Color lightMagenta; 
		text: 'CALL';
		popup: 'Number Of Invocations';
		yourself ).
	rectangles add: (PyramidRectangle new 
		color: [self colorForMetric: #FanoutCalls withValue: metrics fanoutCalls]; 
		textColor: Color white;
		calculation: [metrics fanoutCalls];
		popup: 'Coupling dispersion (FANOUT/Operation Call).
Indicator of how much the coupling involves many classes';
		yourself ).
	rectangles add: (PyramidRectangle new 
		color: Color paleYellow; 
		text: 'CYCLO';
		popup: 'Cyclomatic Number';
		yourself ).
	self yellowRectangles: 4.
	rectangles add: (PyramidRectangle new 
		color: Color paleYellow;  
		calculation: [self cyclo];
		popup: 'Cyclomatic Number';
		yourself ).	
	rectangles add: (PyramidRectangle new 
		color: Color lightMagenta;  
		calculation: [self fanout];
		popup: 'Number Of Called Classes';
		yourself ).	
	rectangles add: (PyramidRectangle new color: Color lightMagenta;yourself).
	rectangles add: (PyramidRectangle new 
		color: Color lightMagenta; 
		text: 'FANOUT';
		popup: 'Number Of Called Classes';
		yourself ).
