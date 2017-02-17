reference model reification
testTheRootInheritsFromUIModel
	"self debug: #testTheRootInheritsFromUIModel"

	| referenceModelTheRoot |
	referenceModelTheRoot := self model entityNamed: referenceModelTheRootName.
	self assert: (referenceModelTheRoot superInheritances at: 1) superclass name equals: Model name.
	self assert: referenceModelTheRoot subInheritances size equals: 3.
	self assert: (referenceModelTheRoot subInheritances at: 1) superclass name equals: TheRoot name.
	self
		assert:
			((referenceModelTheRoot subInheritances collect: [ :each | each subclass name ]) includes: SubRootLevelOne name)