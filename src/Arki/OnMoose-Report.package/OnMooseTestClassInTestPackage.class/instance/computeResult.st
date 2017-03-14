accessing
computeResult 
	| testCaseClass phexampleClass |
	testCaseClass := self model allClasses entityNamed: TestCase mooseName.
	^ testCaseClass subclassHierarchyGroup reject: [:each | 
		(self isException: each) or: [
			'*-Tests*' match: each parentPackage name ] ]