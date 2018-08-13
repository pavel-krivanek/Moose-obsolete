*Ring2-Monticello
asRGDefinition

"	method2 := (Object>>#isRingObject) asRingDefinition.
	self assert: method2 class equals: RGMethod.	
	self assert: method2 selector equals: #isRingObject.
	self assert: method2 parent name equals: #Object.

	self deny: (method2 environment == env1)."

	^ self ensureRingDefinitionIn: RGEnvironment new
	
