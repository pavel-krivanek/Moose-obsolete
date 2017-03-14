parsing - peeking
peekForNumberLiteral
	^ self
		peekWith: [super peekForNumberLiteral]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartNumberLiteralPosition: startPosition;
				handleEndNumberLiteralPosition: endPosition]