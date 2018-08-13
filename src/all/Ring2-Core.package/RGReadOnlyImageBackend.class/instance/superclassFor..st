behavior
superclassFor: anRGBehavior

	| realClass realSuperclass def |
	
	realClass := self realBehaviorFor: anRGBehavior.
	realSuperclass := realClass superclass.
	realSuperclass ifNil: [ realSuperclass := realClass ].
	def := self 	definitionFor: realSuperclass ifAbsentRegister: [ 
			realSuperclass asRingMinimalDefinitionIn: anRGBehavior environment ].
	^ def
