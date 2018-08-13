tests
testEmpty

	| composition result |

	composition := RGTraitComposition unnamed.
	result := RGTraitCompositionVisitor new parse: '' for: composition.
	
	self assert: result isCollection.
	self assert: result isEmpty.
	
	composition := RGTraitComposition unnamed.
	result := RGTraitCompositionVisitor new parse: '{}' for: composition.
	
	self assert: result isCollection.
	self assert: result isEmpty.