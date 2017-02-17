connecting
connectToState: aState
	leftBranch ifNil: [leftBranch := aState].
	rightBranch ifNil: [rightBranch := aState].