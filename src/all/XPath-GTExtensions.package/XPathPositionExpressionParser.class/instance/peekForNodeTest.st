parsing - peeking
peekForNodeTest
	^ self
		peekWith: [super peekForNodeTest]
		startAndEndPositionsDo: [:startPosition :endPosition |
			handler
				handleStartNodeTestPosition: startPosition;
				handleEndNodeTestPosition: endPosition]