tests
testClassVariable

	| env classVariable |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	classVariable := (UIManager classVariableNamed: #Default) asRingMinimalDefinitionIn: env.
	self assert: classVariable isClassVariable.
	self assert: classVariable name equals: #Default.
	self assert: classVariable parent name = #UIManager.

	
