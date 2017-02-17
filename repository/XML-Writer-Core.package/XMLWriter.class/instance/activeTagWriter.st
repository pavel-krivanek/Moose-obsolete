accessing
activeTagWriter
	self activeMarkupWriterWithAncestorsDo: [:each |
		each isTagWriter
			ifTrue: [^ each]].
	^ nil.