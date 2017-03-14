parsing - peeking
peekForUnionOperator
	^ self
		peekWith: [super peekForUnionOperator]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartOperatorPosition: startPosition;
				handleEndOperatorPosition: endPosition]