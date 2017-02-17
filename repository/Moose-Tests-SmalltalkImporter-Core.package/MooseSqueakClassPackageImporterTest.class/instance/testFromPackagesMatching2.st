testing collecting classes
testFromPackagesMatching2
	"self debug: #testFromCategoryMatching2"

	| collector |
	collector := MoosePharoImporterTask new
		addFromPackagesMatching: [ :each | 'Collections*' match: each name asString ];
		addFromPackagesMatching: [ :each | 'Kernel*' match: each name asString ].
	self assert: collector allClasses size equals: (self numberOfClassesIn: #('Collections*' 'Kernel*'))