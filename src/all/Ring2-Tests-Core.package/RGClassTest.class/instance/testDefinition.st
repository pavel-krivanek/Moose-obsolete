tests
testDefinition

	| env aClass |
	
	env := RGEnvironment new.
		
	aClass := env ensureClassNamed: 'Object'.
	aClass superclass: (env ensureClassNamed: 'ProtoObject').
	aClass package: (env ensurePackageNamed: 'Kernel-Objects').
	aClass addClassVariable: (RGClassVariable named: #DependentsFields parent: aClass).
	
	self assert: aClass definition = 'ProtoObject subclass: #Object
	instanceVariableNames: ''''
	classVariableNames: ''DependentsFields''
	package: ''Kernel-Objects'''
