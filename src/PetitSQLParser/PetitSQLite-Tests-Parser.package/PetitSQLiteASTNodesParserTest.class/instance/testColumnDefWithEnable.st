tests
testColumnDefWithEnable
	super testColumnDefWithEnable.
	self assert: (result isMemberOf: SQLColumnDefNode).
	self assert: result name equals: 'ABLAUFID'.
	self assert: result type equals: 'NUMBER'.
	self assert: (result constraints isCollection).
	self assert: result constraints size equals: 1.
	self assert: (result constraints first isMemberOf: SQLColumnConstraintNode).
	self assert: result constraints first name equals: nil.
	self assert: result constraints first defaultValue equals: nil.
	self assert: result constraints first isUnique equals: nil.
	self assert: result constraints first isPK equals: nil.
	self assert: result constraints first canBeNull equals: false