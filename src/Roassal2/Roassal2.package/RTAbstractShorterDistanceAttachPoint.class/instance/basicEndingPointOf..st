public - hooks
basicEndingPointOf: anEdge
	^ self attachPointFor: anEdge on: anEdge from with: (self destinationAttachPointsFor: anEdge)