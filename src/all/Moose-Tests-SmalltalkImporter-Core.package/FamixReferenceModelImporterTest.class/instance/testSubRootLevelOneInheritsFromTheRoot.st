reference model reification
testSubRootLevelOneInheritsFromTheRoot
	"self debug: #testSubRootLevelOneInheritsFromTheRoot"

	| referenceModelSubRootLevelOne |
	referenceModelSubRootLevelOne := self model entityNamed: referenceModelSubRootLevelOneName.
	self assert: referenceModelSubRootLevelOne superInheritances size equals: 1.
	self assert: (referenceModelSubRootLevelOne superInheritances at: 1) superclass name equals: TheRoot name.
	self assert: (referenceModelSubRootLevelOne superInheritances at: 1) subclass name equals: SubRootLevelOne name.
	self assert: (referenceModelSubRootLevelOne superInheritances at: 1) superclass name equals: TheRoot name.
	self assert: referenceModelSubRootLevelOne subInheritances isEmpty