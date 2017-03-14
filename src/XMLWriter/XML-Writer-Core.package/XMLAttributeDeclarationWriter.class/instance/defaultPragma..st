accessing
defaultPragma: aDefaultPragma
	defaultPragma :=
		(aDefaultPragma notNil
			and: [aDefaultPragma notEmpty
				and: [aDefaultPragma first == $#]])
			ifTrue: [aDefaultPragma allButFirst]
			ifFalse: [aDefaultPragma]