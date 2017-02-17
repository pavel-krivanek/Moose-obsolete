tests
testChainingPredicate
	| newNodeTestWithPredicates |

	newNodeTestWithPredicates := self newNodeTestWithSinglePredicate.
	self
		assert: newNodeTestWithPredicates class == self classTested;
		assert: newNodeTestWithPredicates nodeTest = self nodeTest.
	self
		assertNodeTestWithPredicates: newNodeTestWithPredicates
		hasPredicates: self singlePredicate.

	2 to: self predicates size do: [:i | | oldNodeTestWithPredicates |
		oldNodeTestWithPredicates := newNodeTestWithPredicates.
		newNodeTestWithPredicates :=
			oldNodeTestWithPredicates ?? (self predicates at: i).
		self
			assert: newNodeTestWithPredicates class == self classTested;
			assert: newNodeTestWithPredicates nodeTest = self nodeTest.
		self
			assertNodeTestWithPredicates: newNodeTestWithPredicates
			hasPredicates: (self predicates copyFrom: 1 to: i).

		self
			deny: oldNodeTestWithPredicates == newNodeTestWithPredicates;
			assert: oldNodeTestWithPredicates nodeTest = self nodeTest.
		self
			assertNodeTestWithPredicates: oldNodeTestWithPredicates
			hasPredicates: (self predicates copyFrom: 1 to: i - 1)].