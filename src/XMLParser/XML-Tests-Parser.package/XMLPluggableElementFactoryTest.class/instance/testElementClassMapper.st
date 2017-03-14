tests
testElementClassMapper
	| factory oldMapper newMapper |

	factory := self newFactoryWithClasses.
	oldMapper := factory elementClassMapper.
	self assert: oldMapper class == self elementClassMapperClass.

	newMapper := self elementClassMapperClass new.
	self
		assert: (factory elementClassMapper: newMapper) == factory;
		assert: factory elementClassMapper == newMapper.