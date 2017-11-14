comparison
= anObject
	anObject ghostClass == GHObjectMutation ifTrue: [ ^self victimClass == anObject victimClass ].
	
	^self victimClass = anObject