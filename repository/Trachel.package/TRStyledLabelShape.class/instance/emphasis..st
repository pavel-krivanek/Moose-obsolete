accessing
emphasis: anEmphasis
	emphasis := anEmphasis isCollection
		ifTrue: [ anEmphasis ]
		ifFalse: [ Array with: anEmphasis ].
	self updateFont