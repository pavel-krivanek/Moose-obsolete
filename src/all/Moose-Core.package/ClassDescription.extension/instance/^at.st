*Moose-Core
@ aSymbol
	"TheRoot@#TheRootSharedVariable"
	"TheRoot class@#uniqueInstance"
	
	<localClassDescriptionMethod> 
    "This method is supposed to be local in ClassDescription because in TClassDescription it
	 would cause conflict with TraitDescription>>@. We use this pragma to test if Trait does 
    not contain some accidental local selectors."

	^ ((aSymbol first isUppercase
		ifTrue: [self instanceSide]
		ifFalse: [self]) mooseName, '.', aSymbol ) asSymbol