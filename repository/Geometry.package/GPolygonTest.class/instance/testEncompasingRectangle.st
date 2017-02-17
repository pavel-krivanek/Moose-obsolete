as yet unclassified
testEncompasingRectangle
self
	assert: (GPolygon newVertices:{ 0 @ -20 . 0 @ 10 . 30 @ -30 . 40 @ 0 . -10 @ 0 . 40 @ -20 }  )encompasingRectangle 
	equals: (Rectangle left: -10  right:40  top: 10 bottom: -30)