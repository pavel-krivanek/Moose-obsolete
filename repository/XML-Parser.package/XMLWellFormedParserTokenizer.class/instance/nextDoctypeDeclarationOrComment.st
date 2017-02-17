tokenizing
nextDoctypeDeclarationOrComment
	"skip !"
	streamReader next.
	streamReader peek == $-
		ifTrue: [^ self nextComment].
	context isPostDoctypeDeclarationContext
		ifTrue: [self errorMultipleDoctypeDeclarations].
	self nextDoctypeDeclaration.