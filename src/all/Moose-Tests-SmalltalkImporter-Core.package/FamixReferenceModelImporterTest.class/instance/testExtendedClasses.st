package and extensions
testExtendedClasses
	"self debug: #testExtendedClasses"

	| subRootModelTwo p1 p2 subRootModelThree extensionMethod |
	p1 := self model entityNamed: #'Moose-TestResources-Reference-PackageOne'.
	p2 := self model entityNamed: #'Moose-TestResources-Reference-PackageTwo'.
	subRootModelTwo := self model entityNamed: SubRootModelTwo mooseName.
	subRootModelThree := self model entityNamed: SubRootModelThree mooseName.
	extensionMethod := self model entityNamed: (SubRootModelTwo >> #extendedMethodOne) mooseName.
	self assert: subRootModelTwo packageScope equals: p1.
	self assert: subRootModelTwo isExtended.
	self assert: (subRootModelTwo extendedInPackages includes: p2).
	self assert: (subRootModelTwo extendedMethods includes: extensionMethod).
	self deny: subRootModelThree isExtended