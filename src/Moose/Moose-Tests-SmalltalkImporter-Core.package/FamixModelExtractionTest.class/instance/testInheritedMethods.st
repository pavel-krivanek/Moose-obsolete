tests
testInheritedMethods
	| inheritedMethods |
	inheritedMethods := (self model entityNamed: msePrinterClassName) inheritedMethods.
	self assert: inheritedMethods size equals: 15.
	self assert: (inheritedMethods includes: (self model entityNamed: outputServerName)).
	self assert: (inheritedMethods includes: (self model entityNamed: acceptServerName)).
	self assert: (inheritedMethods includes: (self model entityNamed: acceptNodeName)).
	self assert: (inheritedMethods includes: (self model entityNamed: canOutputServerName)).
	self assert: (inheritedMethods includes: (self model entityNamed: canOutputNodeName)).	"overridden in OutputServer"
	self assert: (inheritedMethods includes: (self model entityNamed: nameNodeName)).
	self assert: (inheritedMethods includes: (self model entityNamed: nameNodeNameColon)).
	self assert: (inheritedMethods includes: (self model entityNamed: nextNodeName)).
	self assert: (inheritedMethods includes: (self model entityNamed: nextNodeNameColon)).
	self assert: (inheritedMethods includes: (self model entityNamed: initializeNodeName)).
	self assert: (inheritedMethods includes: (self model entityNamed: printOnNodeName)).
	self assert: (inheritedMethods includes: (self model entityNamed: sendNodeName)).
	self assert: (inheritedMethods includes: (self model entityNamed: canOriginateNodeName)).
	self assert: (inheritedMethods includes: (self model entityNamed: methodWithEmptyBodyNodeName)).
	self deny: (inheritedMethods includes: (self model entityNamed: newNodeClassName))	"class method of Node"