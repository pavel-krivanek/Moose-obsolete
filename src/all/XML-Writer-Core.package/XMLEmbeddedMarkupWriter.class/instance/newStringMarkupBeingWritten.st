private
newStringMarkupBeingWritten
	self hasStartedWriting
		ifTrue: [
			self hasEmbeddedMarkup
				ifFalse: [self writeEmbeddedMarkupPrologue].
			hasEmbeddedStringMarkup := true]
		ifFalse: [self write]