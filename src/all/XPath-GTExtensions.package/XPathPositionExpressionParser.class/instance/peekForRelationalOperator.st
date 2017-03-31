parsing - peeking
peekForRelationalOperator
	^ self
		peekWith: [super peekForRelationalOperator]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartOperatorPosition: startPosition;
				handleEndOperatorPosition: endPosition]