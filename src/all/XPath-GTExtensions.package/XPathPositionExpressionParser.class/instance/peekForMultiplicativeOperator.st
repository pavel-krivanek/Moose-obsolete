parsing - peeking
peekForMultiplicativeOperator
	^ self
		peekWith: [super peekForMultiplicativeOperator]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartOperatorPosition: startPosition;
				handleEndOperatorPosition: endPosition]