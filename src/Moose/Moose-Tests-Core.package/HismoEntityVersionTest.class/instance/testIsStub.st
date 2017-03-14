tests
testIsStub
	| versionEntity version |
	versionEntity := FAMIXClass new. 
	version := HismoEntityVersion new.
	version versionEntity: versionEntity.
	self assert: version isStub not.
	
	versionEntity isStub: true.
	self assert: version isStub