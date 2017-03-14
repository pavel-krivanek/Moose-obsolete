tests
testCollectionOrderedEquality
	self shouldnt: [#(1 2 3) should beOrderedEqualTo: #(1 2 3)] raise: SpecOfFailed.
	self should: [#(2 1 3) should beOrderedEqualTo: #(1 2 3)] raise: SpecOfFailed.
	self should: [#(1 2) should beOrderedEqualTo: #(1 2 3)] raise: SpecOfFailed