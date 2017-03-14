tests
testClassNamedIfPresent
	self assert:
		(self classFinder
			classNamed: self presentClassName
			ifPresent: [:presentClass | #present -> presentClass]) =
				(#present -> self presentClass).
	"ensure cull: is used"
	self assert:
		(self classFinder
			classNamed: self presentClassName
			ifPresent: [#present]) = #present.
	self assert:
		(self classFinder
			classNamed: self absentClassName
			ifPresent: [self fail]) isNil.