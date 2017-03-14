accessing-derived
definingClass
	"Note, in contrast to #clientMethod we get the class in which the variable is statically defined, which may be a superclass of the subject instance!"
	^ self variable isNil
		ifFalse: [ self variable definingClass ]
		ifTrue: [ self clientClass ]