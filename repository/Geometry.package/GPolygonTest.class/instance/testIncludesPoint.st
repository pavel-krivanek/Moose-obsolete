as yet unclassified
testIncludesPoint
self
	assert: ((GPolygon newVertices:{ 10 @ 10 . -10 @ 10 . -10 @ -10  }  )includesPoint: -5@5)
	equals: true