tests
testExclusionsCollection
	
	| traitExclusion env exclusion1 exclusion2 exclusion3 |

	traitExclusion := RGTraitExclusion unnamed.
	env := traitExclusion environment.

	self assert: traitExclusion exclusions isEmpty.
	self assert: (traitExclusion hasUnresolved: #exclusions).
	
	exclusion1 := #m1.
	traitExclusion addExclusion: exclusion1.
	self assert: traitExclusion exclusions size equals: 1.

	self assert: (traitExclusion hasResolved: #exclusions).
	
	exclusion2 := #m2.
	traitExclusion addExclusion: exclusion2.
	self assert: traitExclusion exclusions size equals: 2.
	
	exclusion3 := #m3.
	traitExclusion addExclusion: exclusion3.
	self assert: traitExclusion exclusions size equals: 3.

	traitExclusion removeExclusion: exclusion3.
	self assert: traitExclusion exclusions size equals: 2.

	traitExclusion cleanExclusions.
	self assert: traitExclusion exclusions isEmpty.
	self assert: (traitExclusion hasResolved: #exclusions).
