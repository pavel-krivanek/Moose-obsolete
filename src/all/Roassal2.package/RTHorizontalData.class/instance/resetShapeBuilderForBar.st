hooks
resetShapeBuilderForBar
	barBuilder := RTShapeBuilder new.
	barBuilder rectangle.
	
	"Default height that compute an appropriate height"
	barBuilder height: [ :object | 
		(builder extent y / (self numberOfPoints * 2)) asFloat ]