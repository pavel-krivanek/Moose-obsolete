parsing - peeking
peekForAxis
	^ self
		peekWith: [super peekForAxis]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartAxisPosition: startPosition;
				handleEndAxisPosition: endPosition]