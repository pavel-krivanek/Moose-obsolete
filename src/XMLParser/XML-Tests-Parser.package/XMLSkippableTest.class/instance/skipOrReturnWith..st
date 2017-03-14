private
skipOrReturnWith: aBlock
	"skip is not portable to Squeak, so a return block is used as a backup"
	(self respondsTo: #skip)
		ifTrue: [self skip]
		ifFalse: [aBlock value]