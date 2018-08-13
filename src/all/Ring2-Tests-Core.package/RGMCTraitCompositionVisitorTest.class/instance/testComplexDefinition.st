tests
testComplexDefinition

	| composition result |

	composition := RGTraitComposition unnamed.
	result := RGTraitCompositionVisitor new parse: 'Trait1 + (Trait2 @ {#a -> #b. #c: -> #d:}) + (Trait3 - {#e. #f:})' for: composition.
	
	self assert: result isCollection.
	self assert: (result allSatisfy: #isRGObject).
	self assert: result size equals: 3.

	self assert: result first isTrait.	
	self assert: result first name equals: #Trait1.

	self assert: result second isTraitAlias.
	self assert: result second subject isTrait.	
	self assert: result second subject name equals: #Trait2.
	self assert: result second aliases isCollection.
	self assert: result second aliases size equals: 2.
	self assert: result second aliases first equals: (#a -> #b).
	self assert: result second aliases second equals: (#c: -> #d:).
	
	self assert: result third isTraitExclusion.
	self assert: result third isRGObject.
	self assert: result third subject isTrait.	
	self assert: result third subject name = #Trait3.
	self assert: result third exclusions isCollection.
	self assert: result third exclusions asArray equals: #(#e #f:).
		
	