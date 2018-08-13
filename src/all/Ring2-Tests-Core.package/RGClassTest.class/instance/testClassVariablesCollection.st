tests
testClassVariablesCollection
	
	| class env classVariable1 classVariable2 classVariable3 |

	class := RGClass unnamed.
	env := class environment.

	self assert: class classVariables isEmpty.
	self assert: (class hasUnresolved: #classVariables).
	
	classVariable1 := RGClassVariable named: #ClassVariable1 parent: class.
	class addClassVariable: classVariable1.
	self assert: class classVariables size equals: 1.
	self assert: class allClassVariables size equals: 1.
	self assert: class allClassVarNames equals: #(ClassVariable1).

	self assert: (class hasResolved: #classVariables).
	
	classVariable2 := RGClassVariable named: #ClassVariable2 parent: class.
	class addClassVariable: classVariable2.
	self assert: class classVariables size equals: 2.
	self assert: class allClassVariables size equals: 2.
	self assert: class allClassVarNames equals: #(ClassVariable1 ClassVariable2).
	
	classVariable3 := RGClassVariable named: #ClassVariable3 parent: class.
	class addClassVariable: classVariable3.
	self assert: class classVariables size equals: 3.
	self assert: class allClassVariables size equals: 3.
	self assert: class allClassVarNames equals: #(ClassVariable1 ClassVariable2 ClassVariable3).

	class removeClassVariable: classVariable3.
	self assert: class classVariables size equals: 2.
	self assert: class allClassVariables size equals: 2.
	self assert: class allClassVarNames equals: #(ClassVariable1 ClassVariable2).

	class cleanClassVariables.
	self assert: class classVariables isEmpty.
	self assert: (class hasResolved: #classVariables).
