initialization
initialize
	super initialize.
	self padding: 15.
	self scatterBoxSize: 150.
	self shouldUseAxis: true.
	self allowSelectableView: true.
	
	self shape circle 
		size: 4; 
		color: (Color colorFrom: '#020289').
	self boxShape: (RTBox new size: self scatterBoxSize;
		color: Color transparent; 
		borderColor: Color veryLightGray).
	self lineShape: (RTLine new color: Color veryLightGray trans).
	self labelShape: (RTLabel new).
	
	generator := RTLabelGenerator nice: RTNiceStepSizeGenerator new.
	generator setLooseFlag: true.
	metrics := Dictionary new.
	
