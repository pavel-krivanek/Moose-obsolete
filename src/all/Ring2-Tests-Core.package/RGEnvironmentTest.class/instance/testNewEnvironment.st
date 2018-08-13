tests
testNewEnvironment
	| newEnvironment |
	
	newEnvironment := RGEnvironment named: 'Testing environment'.
	
	self assert: (newEnvironment isRingResolved).
	
	self assert: (newEnvironment isEnvironment).
	self assert: (newEnvironment name = 'Testing environment').
	self assert: (newEnvironment ask behaviors isEmpty).
	self assert: (newEnvironment hasResolvedName).
	self assert: (newEnvironment hasUnresolved: #behaviors).
	self assert: (newEnvironment hasUnresolved: #globalVariables).
	
	newEnvironment cleanPackages.
	newEnvironment cleanBehaviors.
	newEnvironment cleanGlobalVariables.
	
	self assert: (newEnvironment unresolvedProperties isEmpty).
	self assert: (newEnvironment ask packages isEmpty).

		
