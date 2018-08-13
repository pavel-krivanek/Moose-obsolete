tests
testCreationOfDefinitions

	| env1 method |
	
	env1 := RGEnvironment new.
	
	"self should: [ (Object>>#isRingObject) asRingDefinitionIn: env1 ] raise: RGNotFoundError."
	method := (Object>>#isRGObject) ensureRingDefinitionIn: env1.
	self assert: method class equals: RGMethod.	
	self assert: method selector equals: #isRGObject.
	self assert: method parent name equals: #Object.
	self assert: (method environment == env1).
	

