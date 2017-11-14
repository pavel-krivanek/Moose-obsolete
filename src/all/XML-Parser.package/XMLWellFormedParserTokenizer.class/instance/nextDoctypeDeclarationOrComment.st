tokenizing
nextDoctypeDeclarationOrComment
	"skip !"
	streamReader next.
	streamReader peek == $-
		ifTrue: [^ self nextComment].
	state isPostDoctypeDeclarationState
		ifTrue: [self errorMultipleDoctypeDeclarations].
	self nextDoctypeDeclaration.