private
newMarkupWriterBeingPushed
	self hasStartedWriting
		ifTrue: [
			self hasEmbeddedMarkup
				ifFalse: [self writeEmbeddedMarkupPrologue].
			hasEmbeddedMarkupWriters := true]
		ifFalse: [self write]