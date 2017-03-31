parsing - peeking
peekForAdditiveOperator
	^ self
		peekWith: [super peekForAdditiveOperator]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartOperatorPosition: startPosition;
				handleEndOperatorPosition: endPosition]