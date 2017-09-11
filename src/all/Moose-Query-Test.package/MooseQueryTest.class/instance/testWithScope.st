tests
testWithScope
	| result |
	result := class1 withScope: FAMIXMethod.
	self assert: result size equals: 1.
	self assert: (result includes: method1).
	result := class2 toScope: FAMIXAttribute.
	self assert: result size equals: 2.
	self assert: (result includes: var1).
	self assert: (result includes: var2).
	result := package1 toScope: FAMIXMethod.
	self assert: result size equals: 2.
	self assert: (result includes: method1).
	self assert: (result includes: methodExt).
	result := class1 withScope: FAMIXClass.
	self assert: result size equals: 1.
	self assert: (result includes: class1).
	result := class1 withScope: FAMIXType.
	self assert: result size equals: 1.
	self assert: (result includes: class1).
	result := class1 withScope: FAMIXPackage.
	self assert: result size equals: 1.
	self assert: (result includes: package1).
	result := class1 withScope: FAMIXScopingEntity.
	self assert: result size equals: 2.
	self assert: (result includes: package1).
	self assert: (result includes: namespace)