behavior
metaclassFor: anRGBehavior

	| realBehavior realMetaclass def |
	
	realBehavior := self realBehaviorFor: anRGBehavior.
	realMetaclass := realBehavior class.
	def := self 	definitionFor: realMetaclass ifAbsentRegister: [ 
			realMetaclass asRingMinimalDefinitionIn: anRGBehavior environment ].
	^ def
