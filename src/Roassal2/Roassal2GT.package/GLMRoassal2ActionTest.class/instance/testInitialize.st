tests
testInitialize
	| prez nbActionOriginal |
	prez := GLMRoassal2Presentation new.
	nbActionOriginal := prez actions size.
	GLMRoassal2Action initializePresentation: prez.
	self assert: prez actions size - nbActionOriginal equals: GLMRoassal2Action allLeafSubclasses size.