tests
testColumnConstraintDefaultNumbersWithQuotes
	super testColumnConstraintDefaultNumbersWithQuotes.
	self assert: (result isMemberOf: SQLColumnConstraintNode).
	self assert: result name equals: nil.
	self assert: result defaultValue equals: '0000'.
	self assert: result isUnique equals: nil.
	self assert: result isPK equals: nil.
	self assert: result canBeNull equals: nil