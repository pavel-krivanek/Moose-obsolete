tests
testMultipleTraits

	| composition result |

	composition := RGTraitComposition unnamed.
	result := RGTraitCompositionVisitor new parse: 'Trait1 + Trait2 + Trait3 + Trait4' for: composition.
	
	self assert: result isCollection.
	self assert: result size equals: 4.

	self assert: (result allSatisfy: #isTrait).
	self assert: (result allSatisfy: #isRGObject).
	self assert: (result collect: #name) equals: #(Trait1 Trait2 Trait3 Trait4) asOrderedCollection.