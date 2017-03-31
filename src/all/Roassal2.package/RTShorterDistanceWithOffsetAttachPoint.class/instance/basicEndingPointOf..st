public - hooks
basicEndingPointOf: anEdge
	^ (super basicEndingPointOf: anEdge) + (self offsetNormalFor: anEdge)