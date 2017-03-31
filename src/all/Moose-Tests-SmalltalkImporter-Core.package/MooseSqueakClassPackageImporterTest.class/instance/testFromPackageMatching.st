testing collecting classes
testFromPackageMatching
	"self debug: #testFromCategoryMatching"
	| collector |
	collector := MoosePharoImporterTask new addFromPackagesMatching: [ :each | each name = #'Moose-TestResources-LAN' ].
	self assert: (collector allClasses includes: LANNode)