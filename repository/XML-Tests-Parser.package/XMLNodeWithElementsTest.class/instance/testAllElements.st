tests
testAllElements
	| nodeWithElements allElements |

	nodeWithElements := self newNodeWithElements.
	allElements := nodeWithElements allElements.
	nodeWithElements isElement
		ifTrue: [
			self assert: allElements first = nodeWithElements.
			allElements removeFirst].
	self assert:
		(allElements collect: [:each | each name]) asArray =
			#('zero' 'one' 'two' 'three' 'four' 'prefix:four' 'prefix:five' 'four').
	self
		assertList: allElements first allElements selects: (allElements copyFrom: 1 to: 8);
		assertList: allElements second allElements selects: (allElements copyFrom: 2 to: 3);
		assertList: allElements third allElements selects: (allElements copyFrom: 3 to: 3);
		assertList: allElements fourth allElements selects: (allElements copyFrom: 4 to: 5);
		assertList: allElements fifth allElements selects: (allElements copyFrom: 5 to: 5);
		assertList: allElements sixth allElements selects: (allElements copyFrom: 6 to: 7);
		assertList: allElements seventh allElements selects: (allElements copyFrom: 7 to: 7);
		assertList: allElements eighth allElements selects: (allElements copyFrom: 8 to: 8).