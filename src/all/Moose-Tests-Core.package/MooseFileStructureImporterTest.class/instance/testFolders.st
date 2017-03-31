testing
testFolders
	| folders folder |
	folders := model allFolders.
	self assert: folders size equals: 3.
	self assert: (folders entityNamed: #folders) isNil not.
	self assert: (folders entityNamed: #folders) isRoot.
	self assert: (folders select: [ :each | each isRoot ]) size equals: 1.
	folder := folders entityNamed: #folders.
	self assert: folder folders size equals: 2.
	self assert: folder allRecursiveFolders size equals: 2.
	self assert: folder allRecursiveFiles size equals: 5.
	^ model