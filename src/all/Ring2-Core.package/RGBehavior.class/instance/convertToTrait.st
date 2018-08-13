conversion
convertToTrait

	| traitStrategy originalName |
	
	(self resolvedProperties includesAnyOf: #("superclass" traitComposition classVariables sharedPools))
		ifTrue: [self error: 'This class cannot be converted to trait'].
		
	"TODO: check empty layout"
	"newTrait := RGTrait unresolvedWithParent: self parent.
	newTrait copyPropertiesFrom: self.
	newTrait pvtName: name.
	newTrait pvtLocalMethods: localMethods.
	newTrait pvtTags: tags.

	newTrait behaviorStrategy pvtComment: self behaviorStrategy comment.
	newTrait behaviorStrategy pvtPackage: self behaviorStrategy package."

	originalName := self name.

	traitStrategy := RGTrait newStrategyFor: self environment.
	traitStrategy owner: self.
	traitStrategy pvtClassTrait: self pvtMetaclass.
	traitStrategy pvtPackage: self behaviorStrategy pvtPackage.
	traitStrategy pvtComment: self behaviorStrategy pvtComment.
	
	self behaviorStrategy: traitStrategy.

	self environment ask replaceName: originalName with: self name.
	
	