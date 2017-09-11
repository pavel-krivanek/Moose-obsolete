testing
validPoint: aPosition
	controlPoint ifNil: [ ^ true ].
	^ controlPoint value: aPosition