tests
testDescendantElements
	| nodeWithElements descendantElements |

	nodeWithElements := self newNodeWithElements.
	descendantElements := nodeWithElements descendantElements.
	self assert:
		(descendantElements collect: [:each | each name]) asArray =
			#('zero' 'one' 'two' 'three' 'four' 'prefix:four' 'prefix:five' 'four').
	self
		assertList: descendantElements first descendantElements selects: (descendantElements copyFrom: 2 to: 8);
		assertList: descendantElements second descendantElements selects: (descendantElements copyFrom: 3 to: 3);
		assertList: descendantElements third descendantElements selects: descendantElements copyEmpty;
		assertList: descendantElements fourth descendantElements selects: (descendantElements copyFrom: 5 to: 5);
		assertList: descendantElements fifth descendantElements selects: descendantElements copyEmpty;
		assertList: descendantElements sixth descendantElements selects: (descendantElements copyFrom: 7 to: 7);
		assertList: descendantElements seventh descendantElements selects: descendantElements copyEmpty;
		assertList: descendantElements eighth descendantElements selects: descendantElements copyEmpty.