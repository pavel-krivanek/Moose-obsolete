*Moose-Core
@ aSymbol
	"TheRoot@#TheRootSharedVariable"
	"TheRoot class@#uniqueInstance"
	
	^ ((aSymbol first isUppercase
		ifTrue: [self instanceSide]
		ifFalse: [self]) mooseName, '.', aSymbol ) asSymbol