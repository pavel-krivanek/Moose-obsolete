parsing - peeking
peekForAndOperator
	^ self
		peekWith: [super peekForAndOperator]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartOperatorPosition: startPosition;
				handleEndOperatorPosition: endPosition]