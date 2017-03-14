package and extensions
testExtensionMethod
	"self debug: #testExtendedMethod"

	| p2 extensionMethod |
	p2 := self model entityNamed: #'Moose-TestResources-Reference-PackageTwo'.
	extensionMethod := self model entityNamed: (SubRootModelTwo >> #extendedMethodOne) mooseName.
	self assert: extensionMethod isExtension.
	self assert: extensionMethod packageScope equals: p2.
	self assert: extensionMethod packageScope ~~ extensionMethod belongsTo packageScope