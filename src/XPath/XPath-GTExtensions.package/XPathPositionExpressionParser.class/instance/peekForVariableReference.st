parsing - peeking
peekForVariableReference
	^ self
		peekWith: [super peekForVariableReference]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartVariableReferencePosition: startPosition;
				handleEndVariableReferencePosition: endPosition]