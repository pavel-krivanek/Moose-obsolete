initialize-release
initialize
	super initialize.
	self exportFixedShapes: true.
	self shouldCreateJS: true.
	self jsreference: 'roassal.js'.
	self maxSizeForString: 500.
	self defaultMarginScale.