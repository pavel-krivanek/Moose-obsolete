tests
testDefinitionsIdentity

	| env1 |
	
	env1 := RGEnvironment new.
	
	self assert: (((Object>>#isRGObject) ensureRingDefinitionIn: env1) == ((Object>>#isRGObject) ensureRingDefinitionIn: env1)).
	
	self assert: (((Object>>#isRGObject) ensureRingDefinitionIn: env1) parent
== ((Object>>#isRGObject) ensureRingDefinitionIn: env1) parent).