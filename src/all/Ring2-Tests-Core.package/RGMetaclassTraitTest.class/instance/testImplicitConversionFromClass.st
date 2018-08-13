tests
testImplicitConversionFromClass

	| env |
	
	env := RGEnvironment new.
	env ensureClassNamed: #SomeTrait.
	self assert: (env ask behaviors select: [ :e | e name = #'SomeTrait' ]) size equals: 1.
	self assert: (env ask behaviors select: [ :e | e name = #'SomeTrait clss' ]) size equals: 0.
	
	env ensureTraitNamed: #'SomeTrait'.
	self assert: (env ask behaviors select: [ :e | e name = #'SomeTrait' ]) size equals: 1.
	self assert: (env ask behaviors select: [ :e | e name = #'SomeTrait classTrait' ]) size equals: 0.
	self assert: (env ask behaviors select: [ :e | e name = #'SomeTrait clss' ]) size equals: 0.
	env.
