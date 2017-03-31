tests
testClassNamedIfAbsent
	self assert:
		(self classFinder
			classNamed: self presentClassName
			ifAbsent: [self fail]) == self presentClass.
	self assert:
		(self classFinder
			classNamed: self absentClassName
			ifAbsent: [#absent]) = #absent.