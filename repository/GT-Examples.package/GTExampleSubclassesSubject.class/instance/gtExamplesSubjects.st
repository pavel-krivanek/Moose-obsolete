converting
gtExamplesSubjects
	^ super gtExamplesSubjects , (self theSubclasses collect: [ :each | each asGTExampleSubject ])