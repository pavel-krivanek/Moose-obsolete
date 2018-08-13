tests
testClassTrait

	| composition result |

	composition := RGTraitComposition unnamed.
	result := RGTraitCompositionVisitor new parse: 'Trait1 classTrait + Trait2 classTrait' for: composition.
	
	self assert: result isCollection.
	self assert: (result allSatisfy: #isTrait).
	self assert: (result allSatisfy: #isRGObject).
	self assert: (result collect: #name) equals: #('Trait1 classTrait' 'Trait2 classTrait') asOrderedCollection.