parsing - peeking
peekForOrOperator
	^ self
		peekWith: [super peekForOrOperator]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartOperatorPosition: startPosition;
				handleEndOperatorPosition: endPosition]