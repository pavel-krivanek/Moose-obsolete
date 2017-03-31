private
containerOf: anInstVarName startingAt: aClass

	"When we see that the receiver of an Invocation is an Instance Variable, this instance variable may be defined in the class containing the invocation or maybe in one of the superclass.
	Here we return the class defining this instance variable."
	

	(aClass instVarNames includes: anInstVarName )
		ifTrue: [ ^ aClass ]
		ifFalse: [ ^ self containerOf: anInstVarName startingAt: aClass ].
		
		 .