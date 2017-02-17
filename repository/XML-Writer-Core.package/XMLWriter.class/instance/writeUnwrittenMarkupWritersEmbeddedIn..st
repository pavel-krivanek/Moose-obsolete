private
writeUnwrittenMarkupWritersEmbeddedIn: aMarkupWriter
	self activeMarkupWriterWhileChangingDo: [:each |
		each == aMarkupWriter
			ifTrue: [^ self].
		each hasStartedWriting
			ifFalse: [each write]]