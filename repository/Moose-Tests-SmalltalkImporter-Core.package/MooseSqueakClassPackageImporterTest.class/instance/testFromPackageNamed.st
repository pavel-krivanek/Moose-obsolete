testing collecting classes
testFromPackageNamed
	| collector |
	collector := MoosePharoImporterTask new addFromPackageNamed: #'Moose-TestResources-LAN'.
	self assert: (collector allClasses includes: LANNode)