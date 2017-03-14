tests
testInheritedAttributes
	| inheritedAtts |
	inheritedAtts := (self model entityNamed: msePrinterClassName) inheritedAttributes.
	self assert: (self model entityNamed: msePrinterClassName) superclassHierarchy size equals: 5.
	self assert: inheritedAtts size equals: (self totalNumberOfAttributesFor: LANPrintServer superclass).
	self assert: (inheritedAtts reject: [ :each | each hasClassScope ]) size equals: 5.
	self assert: (inheritedAtts includes: (self model entityNamed: nodeName)).
	self assert: (inheritedAtts includes: (self model entityNamed: nextNode)).
	self assert: (inheritedAtts includes: (self model entityNamed: serverType)).
	self assert: (inheritedAtts select: [ :each | each hasClassScope ]) size equals: 1