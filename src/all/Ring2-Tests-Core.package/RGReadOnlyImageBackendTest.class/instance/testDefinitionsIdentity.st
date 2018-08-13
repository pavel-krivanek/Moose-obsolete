tests
testDefinitionsIdentity

	| env1 |
	
	env1 := RGEnvironment new.
	env1 backend: (RGReadOnlyImageBackend for: env1).
	
	self assert: (((Object>>#isRGObject) asRingMinimalDefinitionIn: env1) == ((Object>>#isRGObject) asRingMinimalDefinitionIn: env1)).
	
	self assert: (((Object>>#isRGObject) asRingMinimalDefinitionIn: env1) parent
== ((Object>>#isRGObject) asRingMinimalDefinitionIn: env1) parent).