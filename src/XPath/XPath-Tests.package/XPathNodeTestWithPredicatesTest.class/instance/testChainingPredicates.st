tests
testChainingPredicates
	| newNodeTestWithPredicates oldNodeTestWithPredicates |

	newNodeTestWithPredicates := self newNodeTestWithPredicates.
	self
		assert: newNodeTestWithPredicates class == self classTested;
		assert: newNodeTestWithPredicates nodeTest = self nodeTest.
	self
		assertNodeTestWithPredicates: newNodeTestWithPredicates
		hasPredicates: self predicates.

	oldNodeTestWithPredicates := newNodeTestWithPredicates.
	newNodeTestWithPredicates :=
		oldNodeTestWithPredicates ?? self predicates.
	self
		assert: newNodeTestWithPredicates class == self classTested;
		assert: newNodeTestWithPredicates nodeTest = self nodeTest.
	self
		assertNodeTestWithPredicates: newNodeTestWithPredicates
		hasPredicates: self predicates, self predicates.

	self
		deny: oldNodeTestWithPredicates == newNodeTestWithPredicates;
		assert: oldNodeTestWithPredicates nodeTest = self nodeTest.
	self
		assertNodeTestWithPredicates: oldNodeTestWithPredicates
		hasPredicates: self predicates.