drawing
drawOn: athensCanvas
	| paint |
	athensCanvas pathTransform restoreAfter: [
		athensCanvas setShape: self form boundingBox.
		athensCanvas pathTransform 
			multiplyBy: matrix asFloatTransform;
			translateBy: self basicEncompassingRectangle corner negated.
		self form ifNotNil: [ 
			 paint := (athensCanvas cacheAt: self form
                             	ifAbsentPut: [ (self form asAthensPaintOn: athensCanvas) ]).
			athensCanvas setPaint: paint.
			].
		athensCanvas draw ].