tokenizing
nextEndDocument
	state isTerminatedState
		ifFalse: [
			self closeStreams.
			state := state terminatedState.
			driver handleEndDocument]