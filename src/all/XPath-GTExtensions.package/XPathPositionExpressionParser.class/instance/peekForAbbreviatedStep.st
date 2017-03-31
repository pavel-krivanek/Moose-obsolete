parsing - peeking
peekForAbbreviatedStep
	^ self
		peekWith: [super peekForAbbreviatedStep]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartAxisPosition: startPosition;
				handleEndAxisPosition: endPosition]