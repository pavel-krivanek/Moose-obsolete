tests
testInheritedSignaturesToMethod
	"Note: non-ST features like private methods and multiple inheritance issues for C++ (and Java
	 interfaces) are not (yet) tested"

	| inheritedSignatures |
	inheritedSignatures := (self model entityNamed: msePrinterClassName) inheritedSignaturesToMethod.
	self assert: (inheritedSignatures at: #'output:(Object)') equals: (self model entityNamed: outputServerName).
	self assert: (inheritedSignatures at: #'canOutput()') equals: (self model entityNamed: canOutputServerName).
	self assert: (inheritedSignatures at: #'name()') equals: (self model entityNamed: nameNodeName).
	self assert: (inheritedSignatures at: #'name:(Object)') equals: (self model entityNamed: nameNodeNameColon).
	self assert: (inheritedSignatures at: #'nextNode()') equals: (self model entityNamed: nextNodeName).
	self assert: (inheritedSignatures at: #'nextNode:(Object)') equals: (self model entityNamed: nextNodeNameColon).
	self assert: (inheritedSignatures at: #'initialize()') equals: (self model entityNamed: initializeNodeName).
	self assert: (inheritedSignatures at: #'printOn:(Object)') equals: (self model entityNamed: printOnNodeName).
	self assert: (inheritedSignatures at: #'send:(Object)') equals: (self model entityNamed: sendNodeName).
	self assert: (inheritedSignatures at: #'canOriginate()') equals: (self model entityNamed: canOriginateNodeName).
	self
		assert: (inheritedSignatures at: #'methodWithEmptyBody()')
		equals: (self model entityNamed: methodWithEmptyBodyNodeName).
	self assert: (inheritedSignatures at: #'accept:(Object)') equals: (self model entityNamed: acceptServerName).
	self assert: inheritedSignatures size equals: 13