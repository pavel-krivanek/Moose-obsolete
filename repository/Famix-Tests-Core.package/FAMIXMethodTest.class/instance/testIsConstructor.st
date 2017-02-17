testing
testIsConstructor
	self assert: (FAMIXMethod new isConstructor: true; isConstructor).
	self deny: (FAMIXMethod new isConstructor: true; isConstructor: false; isConstructor).
	self assert: (FAMIXMethod new isConstructor: true; isConstructor: false; isConstructor: true; isConstructor)