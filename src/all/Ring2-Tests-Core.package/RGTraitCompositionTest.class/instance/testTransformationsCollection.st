tests
testTransformationsCollection
	
	| traitComposition env transformation1 transformation2 transformation3 |

	traitComposition := RGTraitComposition unnamed.
	env := traitComposition environment.

	self assert: traitComposition transformations isEmpty.
	self assert: (traitComposition hasUnresolved: #transformations).
	
	transformation1 := RGTraitComposition parent: env.
	env addBehavior: transformation1.
	traitComposition addTransformation: transformation1.
	self assert: traitComposition transformations size equals: 1.

	self assert: (traitComposition hasResolved: #transformations).
	
	transformation2 := RGTraitAlias parent: traitComposition.
	traitComposition addTransformation: transformation2.
	self assert: traitComposition transformations size equals: 2.
	
	transformation3 := RGTraitExclusion parent: traitComposition.
	traitComposition addTransformation: transformation3.
	self assert: traitComposition transformations size equals: 3.

	traitComposition removeTransformation: transformation3.
	self assert: traitComposition transformations size equals: 2.

	traitComposition cleanTransformations.
	self assert: traitComposition transformations isEmpty.
	self assert: (traitComposition hasResolved: #transformations).
