parsing - peeking
peekForStringLiteral
	^ self
		peekWith: [super peekForStringLiteral]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartStringLiteralPosition: startPosition;
				handleEndStringLiteralPosition: endPosition]