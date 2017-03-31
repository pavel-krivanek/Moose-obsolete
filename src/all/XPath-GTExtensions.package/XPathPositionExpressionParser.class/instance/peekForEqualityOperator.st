parsing - peeking
peekForEqualityOperator
	^ self
		peekWith: [super peekForEqualityOperator]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartOperatorPosition: startPosition;
				handleEndOperatorPosition: endPosition]