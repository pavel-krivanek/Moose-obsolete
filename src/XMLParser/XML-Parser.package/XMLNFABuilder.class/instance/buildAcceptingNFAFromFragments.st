building
buildAcceptingNFAFromFragments
	[self totalFragments > 1]
		whileTrue: [self applyConcatenation].
	^ self popFragment
		connectToState: XMLNFAAcceptingState new;
		firstState.