tests
testColumnDefWithLongDefault
	super testColumnDefWithLongDefault.
	self assert: (result isMemberOf: SQLColumnDefNode).
	self assert: result name equals: 'Year'.
	self assert: result type equals: 'VARCHAR2'.
	self assert: (result constraints isCollection).
	self assert: (result constraints first isMemberOf: SQLColumnConstraintNode).
	self assert: result constraints first defaultValue equals: '0000'.
	self assert: result constraints first isUnique equals: nil.
	self assert: result constraints first isPK equals: nil.
	self assert: result constraints first canBeNull equals: nil.
	self assert: (result constraints second isMemberOf: SQLColumnConstraintNode).
	self assert: result constraints second defaultValue equals: nil.
	self assert: result constraints second isUnique equals: nil.
	self assert: result constraints second isPK equals: nil.
	self assert: result constraints second canBeNull equals: false