tests
testClassNamed
	self assert:
		(self classFinder classNamed: self presentClassName) ==
			self presentClass.
	self assert: (self classFinder classNamed: self absentClassName) isNil.