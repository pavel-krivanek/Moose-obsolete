private
transformedEncompassingRectangle
	"Not all shapes are alredy using matrix. 
	For that reason we have this method.
	For straight-forward version where the matrix is just a movement we move it directly for performance reasons.
	"
	| basicRectangle rotatedRectangle topLeft topRight bottomRight bottomLeft p1 p2 p3 p4 |
	basicRectangle := self basicEncompassingRectangle.
	(matrix sx = 1) & (matrix sy = 1) & (matrix shx = 0) & (matrix shy = 0) ifTrue: [
		 ^ basicRectangle translateBy: (matrix x value@ matrix y value)
	].
	topLeft := matrix transform: basicRectangle topLeft.
	topRight := matrix transform: basicRectangle topRight.
	bottomRight := matrix transform: basicRectangle bottomRight.
	bottomLeft := matrix transform: basicRectangle bottomLeft.
	
	p1 := OrderedCollection new add: topLeft x; add: topRight x; add: bottomRight x; add: bottomLeft x; yourself.
	p2 := OrderedCollection new add: topLeft y; add: topRight y; add: bottomRight y; add: bottomLeft y; yourself.
	p3 := OrderedCollection new add: topLeft x; add: topRight x; add: bottomRight x; add: bottomLeft x; yourself.
	p4 := OrderedCollection new add: topLeft y; add: topRight y; add: bottomRight y; add: bottomLeft y; yourself.
	
	rotatedRectangle := 
		(p1 min @ p2 min) corner:
		(p3 max @ p4 max).
	^ rotatedRectangle