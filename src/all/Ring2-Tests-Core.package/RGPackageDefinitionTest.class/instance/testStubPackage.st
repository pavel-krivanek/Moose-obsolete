tests - new
testStubPackage
	| env package package2 |
	
	env := RGEnvironment new.
	self assert: (env ask packages size = 0). 
	
	package := RGPackageDefinition named: 'Collections-Sequenceable'.
	env := package environment.
	self assert: (env ask packages size = 1).
	
	package2 := RGPackageDefinition named: 'Collections-Sequenceable' parent: env.
	"self assert: (env ask packages size = 2).
	env addPackage: package2.
	self assert: (env ask packages size = 3)."
	
