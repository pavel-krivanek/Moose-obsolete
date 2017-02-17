writing
with: aStringOrCollectionOrBlock
	self hasStartedWriting
		ifFalse: [
			self
				startWriting;
				writeBody: aStringOrCollectionOrBlock;
				finishWriting]