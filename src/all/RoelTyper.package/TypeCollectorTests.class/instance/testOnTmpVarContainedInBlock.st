typing tests
testOnTmpVarContainedInBlock

	self shouldnt: (TypeCollector typeTmpsIn: (self class >> #methodWithTmpInBlock:)
		ofClass: self class) raise: Error