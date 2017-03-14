writing
write
	self hasStartedWriting
		ifFalse: [
			self
				startWriting;
				writeBody;
				finishWriting]