tests
testNew
	| list |

	list := self listClass new: 20.
	self assert: list = self emptyList.
	self hasCapacity
		ifTrue: [self assert: list capacity >= 20].