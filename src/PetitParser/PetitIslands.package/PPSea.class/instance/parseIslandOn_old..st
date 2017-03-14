parsing
parseIslandOn_old: aPPContext 
	|  result |
	"Do not allow empty parses, when searching for the island..."
	(aPPContext waterPosition == aPPContext position) ifTrue:[
		result := island "nonEmpty" parseOn: aPPContext.
	"But allow when boundary found"
	] ifFalse: [
		| tmp |
		"
			Oh, the thing is, if island starts with island parser B, 
			which is nested in another parser A, where B is bounded
			by something else than A. Then the B is not allowed to 
			skip over the boundary of A, but B has different boundary!
			
			Thus I disallow before water of any island parser that starts island
			by setting the water position!
		"
		tmp := aPPContext waterPosition.
		aPPContext waterPosition: aPPContext position.
		result := island parseOn: aPPContext.
		aPPContext waterPosition: tmp.
	].

	^ result
