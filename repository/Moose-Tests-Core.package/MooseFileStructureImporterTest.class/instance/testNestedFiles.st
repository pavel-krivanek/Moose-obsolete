testing
testNestedFiles
	| folders |
	folders := model allFolders.
	self assert: (folders entityNamed: #folders) folders size equals: 2.
	(folders entityNamed: #folders) folders do: [ :each | self assert: each files size equals: 1 ]