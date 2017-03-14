tokenizing
nextNonPIPrologOrContentMarkupToken
	streamReader peek == $!
		ifTrue: [^ self nextDoctypeDeclarationOrComment].
	self
		nextStartContent;
		nextTag.