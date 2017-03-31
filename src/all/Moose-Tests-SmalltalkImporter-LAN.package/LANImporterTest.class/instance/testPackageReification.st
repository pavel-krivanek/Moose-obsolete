tests
testPackageReification
	"
	self new testPackageReification
	"

	self model allClasses do: [ :each | self assert: (each parentPackage isKindOf: FAMIXPackage) ].
	self model allPackages
		do: [ :each | each localClasses do: [ :eachClass | self assert: eachClass parentPackage equals: each ] ].
	self assert: (self model allPackages entityNamed: #'Moose-TestResources-LAN') localClasses size equals: 20