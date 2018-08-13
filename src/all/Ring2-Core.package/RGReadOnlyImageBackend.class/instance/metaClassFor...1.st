class description
metaClassFor: anRGBehavior

	| realClass realMetaclass def |
	
	realClass := self realBehaviorFor: anRGBehavior.
	realMetaclass := realClass class.
	def := self 	definitionFor: realMetaclass ifAbsentRegister: [ 
			realMetaclass asRingMinimalDefinitionIn: anRGBehavior environment ].
	^ def
