hooks
resetShapeBuilderForBar
	super resetShapeBuilderForBar.
	
	"Default width that compute an appropriate width"
	barBuilder width: [ :object | 
		(builder extent x / (self numberOfPoints * self numberOfMetrics * 2)) asFloat ]