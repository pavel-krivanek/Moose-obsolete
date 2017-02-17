tokenizing
nextEndDocument
	context isTerminatedContext
		ifFalse: [
			self closeStreams.
			context := context terminatedContext.
			driver handleEndDocument]