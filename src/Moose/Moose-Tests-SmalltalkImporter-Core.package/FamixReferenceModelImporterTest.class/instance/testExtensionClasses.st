package and extensions
testExtensionClasses
	"self debug: #testExtensionClasses"

	| p1 p2 extensionClasses c3 c2 |
	p1 := self model entityNamed: #'Moose-TestResources-Reference-PackageOne'.
	p2 := self model entityNamed: #'Moose-TestResources-Reference-PackageTwo'.
	extensionClasses := p2 extensionClasses.
	c3 := self model entityNamed: SubRootModelThree mooseName.
	c2 := self model entityNamed: SubRootModelTwo mooseName.
	self assert: (p2 localClasses includes: c3).
	self assert: (p1 localClasses includes: c2).
	self assert: p1 localClasses size equals: 2.	"class and metaclass"
	self deny: (extensionClasses includes: c3).
	self assert: (extensionClasses includes: c2)