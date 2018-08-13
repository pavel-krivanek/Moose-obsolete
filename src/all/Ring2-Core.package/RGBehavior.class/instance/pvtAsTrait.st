strategy
pvtAsTrait

	| traitStrategy |
	
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

	traitStrategy := RGTrait newStrategyFor: self environment.

	traitStrategy pvtComment: self behaviorStrategy comment.
	traitStrategy pvtPackage: self behaviorStrategy package.
	
	self behaviorStrategy: traitStrategy.
	
	^ self	
	