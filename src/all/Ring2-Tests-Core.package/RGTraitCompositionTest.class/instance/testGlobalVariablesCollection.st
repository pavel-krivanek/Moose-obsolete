tests
testGlobalVariablesCollection
	
	| globalVariable globalVariable2 traitComposition env transformation1 transformation2 transformation3 |

	env := RGEnvironment new.

	self assert: env ask globalVariables isEmpty.
	self assert: (env hasUnresolved: #globalVariables).
	
	globalVariable := RGGlobalVariable named: #SomeGlobal parent: env.
	env addGlobalVariable: globalVariable.
	self assert: env ask globalVariables size equals: 1.

	self assert: (env hasResolved: #globalVariables).
	
	globalVariable2 := RGGlobalVariable named: #SomeGlobal2 parent: env.
	env addGlobalVariable: globalVariable2.
	self assert: env ask globalVariables size equals: 2.
	
	env removeGlobalVariable: globalVariable2.
	self assert: env ask globalVariables size equals: 1.

	env cleanGlobalVariables.
	self assert: env ask globalVariables isEmpty.
	self assert: (env hasResolved: #globalVariables).
