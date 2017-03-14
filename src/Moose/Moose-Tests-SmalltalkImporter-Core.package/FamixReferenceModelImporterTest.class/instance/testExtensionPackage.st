package and extensions
testExtensionPackage
	"self debug: #testExtensionPackage"

	| normalClass extendedClass extensionPackage externalExtendedClass |
	extensionPackage := self model allPackages entityNamed: #'Moose-TestResources-Reference-PackageTwo'.
	extendedClass := self model entityNamed: SubRootModelTwo mooseName.
	externalExtendedClass := self model entityNamed: FamixReferenceModelNamespaceTestResource mooseName.
	normalClass := self model entityNamed: SubRootModelThree mooseName.
	self assert: (extensionPackage classes includes: normalClass).
	self deny: (extensionPackage classes includes: extendedClass).
	self deny: (extensionPackage classes includes: externalExtendedClass).
	self assert: (extensionPackage localClasses includes: normalClass).
	self deny: (extensionPackage extensionClasses includes: normalClass).
	self assert: (extensionPackage extensionClasses includes: extendedClass).
	self assert: (extensionPackage extensionClasses includes: externalExtendedClass).
	self assert: extensionPackage extendedClasses isEmpty.
	self assert: extensionPackage methods size equals: 3.
	self assert: extensionPackage localMethods size equals: 1.
	self assert: extensionPackage extensionMethods size equals: 2.
	self
		assert:
			(extensionPackage extensionMethods
				includes:
					(self model entityNamed: (FamixReferenceModelNamespaceTestResource >> #externalClassExtensionForTest) mooseName)).
	self
		assert:
			(extensionPackage extensionMethods includes: (self model entityNamed: (SubRootModelTwo >> #extendedMethodOne) mooseName))