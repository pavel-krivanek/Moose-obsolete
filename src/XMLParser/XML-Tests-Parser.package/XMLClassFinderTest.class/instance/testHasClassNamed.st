tests
testHasClassNamed
	self
		assert: (self classFinder hasClassNamed: self presentClassName);
		deny: (self classFinder hasClassNamed: self absentClassName)