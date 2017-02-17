tests
testCorrectnessOfImport
	"self debug: #testCorrectnessOfImport"

	| node outputServer nodeName workstationName fileServerName printServerName uiModelName nodeSubclasses outputServerName outputServerSubclasses |
	nodeName := LANNode mooseName.
	workstationName := LANWorkStation mooseName.
	fileServerName := LANFileServer mooseName.
	printServerName := LANPrintServer mooseName.
	uiModelName := Model mooseName.
	outputServerName := LANOutputServer mooseName.
	node := self model entityNamed: nodeName.
	outputServer := self model entityNamed: outputServerName.	"UI.Model superclass LAN.Node and has two subclasses"
	self assert: node superInheritances size equals: 1.
	self assert: ((node superInheritances collect: [ :each | each subclass mooseName ]) includes: nodeName).
	self assert: ((node superInheritances collect: [ :each | each superclass mooseName ]) includes: uiModelName).
	self assert: node subInheritances size equals: 2.
	nodeSubclasses := node subInheritances collect: [ :each | each subclass mooseName ].
	self assert: (nodeSubclasses includes: workstationName).
	self assert: (nodeSubclasses includes: outputServerName).
	self assert: outputServer superInheritances size equals: 1.
	self assert: ((outputServer superInheritances collect: [ :each | each subclass mooseName ]) includes: outputServerName).
	self assert: ((outputServer superInheritances collect: [ :each | each superclass mooseName ]) includes: nodeName).
	self assert: outputServer subInheritances size equals: 2.
	outputServerSubclasses := outputServer subInheritances collect: [ :each | each subclass mooseName ].
	self assert: (outputServerSubclasses includes: fileServerName).
	self assert: (outputServerSubclasses includes: printServerName)