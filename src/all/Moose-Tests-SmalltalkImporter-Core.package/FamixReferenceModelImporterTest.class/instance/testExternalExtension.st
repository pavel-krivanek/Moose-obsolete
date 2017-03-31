package and extensions
testExternalExtension
	"self debug: #testExternalExtension"
	| extensionPackage externalExtendedClass |
	
	extensionPackage := self model entityNamed: #'Moose-TestResources-Reference-PackageTwo'.
	externalExtendedClass := self model entityNamed: FamixReferenceModelNamespaceTestResource mooseName.

	self assert: (externalExtendedClass isStub).
	self deny: (extensionPackage classes includes: externalExtendedClass).
	self assert: (extensionPackage extensionMethods includes:
		(self model entityNamed: (FamixReferenceModelNamespaceTestResource>>#externalClassExtensionForTest) mooseName)).
