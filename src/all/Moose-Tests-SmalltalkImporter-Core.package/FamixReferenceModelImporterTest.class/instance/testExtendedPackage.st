package and extensions
testExtendedPackage
	"self debug: #testExtendedPackage"

	| extendedClass extendedPackage |
	extendedPackage := self model entityNamed: #'Moose-TestResources-Reference-PackageOne'.
	extendedClass := self model entityNamed: SubRootModelTwo mooseName.
	self assert: (extendedPackage localClasses includes: extendedClass).
	self assert: (extendedPackage extendedClasses includes: extendedClass).
	self assert: extendedPackage extensionClasses isEmpty.
	self assert: extendedPackage methods size equals: 2.
	self assert: extendedPackage localMethods size equals: 2