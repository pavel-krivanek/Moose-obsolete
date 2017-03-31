writing
finishWriting
	self hasEmbeddedMarkupWriters
		ifTrue: [self writer writeUnwrittenMarkupWritersEmbeddedIn: self].
	self writeEpilogue.

	self writer popActiveMarkupWriter.