public - layout
allOfSameSize
	"Can be called before or after adding the shapes
	
	Example:
	
	box1 := RTBox new color: Color blue trans; size: 20.
	box2 := RTBox new color: Color red trans; size: 10.

	combo:= RTCompositeShape new allOfSameSize; add: box1; add: box2.

	RTView new
	    add: combo element. 


	"
	shapeFraming := #allOfSameSize