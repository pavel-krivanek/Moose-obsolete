parsing - peeking
peekForNegationOperator
	^ self
		peekWith: [super peekForNegationOperator]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartOperatorPosition: startPosition;
				handleEndOperatorPosition: endPosition]