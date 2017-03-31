reference model reification
testAccessingNamespaceAsGlobalVariable
	"self debug: #testAccessingNamespaceAsGlobalVariable"

	| accessDefinition method globalVariable |
	"TheRoot>>accessingNamespace
		Smalltalk"
	globalVariable := self model entityNamed: #SmalltalkGlobalVariable.
	method := self model entityNamed: (TheRoot >> #accessingNamespace) mooseName.	"since we have two methods accessing to Smalltalk 
	we have two accesses"
	self assert: (self model allAccesses select: [ :acc | acc to name = #SmalltalkGlobalVariable ]) size equals: 2.
	self assert: (self model allAccesses select: [ :ref | ref to = globalVariable ]) size equals: 2.
	accessDefinition := self model allAccesses select: [ :ref | ref to = globalVariable and: [ ref from == method ] ].
	self assert: accessDefinition size equals: 1