private-init
initializeSubjectsForMethod: aCompiledMethod forExample: aGTExample
	[ self providerFor: aCompiledMethod do: [ :each | 
			(each class canPerform: #gtExamplesSubjects) ifTrue: [
				self initializeSubjects: each gtExamplesSubjects forExample: aGTExample ] ] ]
		on: Error
		do: [ :exception | 
			aGTExample addProblem: (GTExampleSubjectError new 
				example: aGTExample;
				signaledException: exception;
				yourself) ]