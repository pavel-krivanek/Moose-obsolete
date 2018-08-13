tests
testAlias

	| composition result |

	composition := RGTraitComposition unnamed.
	result := RGTraitCompositionVisitor new parse: 'Trait2 @ {#a -> #c}' for: composition.
	
	self assert: result isCollection.
	self assert: (result allSatisfy: #isTraitAlias).
	self assert: (result allSatisfy: #isRGObject).
	self assert: result size equals: 1.
	self assert: result first subject isTrait.	
	self assert: result first subject name equals: #Trait2.
	self assert: result first aliases isCollection.
	self assert: result first aliases first equals: (#a -> #c).
	